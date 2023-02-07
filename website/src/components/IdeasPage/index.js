import $ from "jquery"
import React from 'react'
import * as URLS from '../../constants/urls'
import FilterIdeasForm from "./FilterIdeasForm"
import IdeaCard from './IdeaCard'
import IdeasGrid from './IdeasGrid'
import './style.css'


const getContentsOfFileFromURL = url => {
  var result = null
  $.ajax({
    url: url,
    type: 'get',
    dataType: 'text',
    async: false,
    success: function (data) {
      result = data
    }
  })
  return result
}

const getJsonFromURL = url =>
  JSON.parse(getContentsOfFileFromURL(url))


class IdeasPage extends React.Component {
  constructor() {
    super()

    this.ideas = getJsonFromURL(URLS.IDEAS_FILE)
    this.supervisors = getJsonFromURL(URLS.SUPERVISORS_FILE)

    this.supervisors = this.supervisors.map(each => {
      // Commented out because it is very slow :(

      /*const githubUser = each.github ?
        getJsonFromURL(`https://api.github.com/users/${each.github}`) :
        null*/

      const githubUser = null

      const picture = githubUser ? githubUser.avatar_url : null
      return { ...each, pictureUrl: picture }
    })

    this.state = {
      ideasToDisplay: this.ideas,
      filters: {
        selectedLevel: null,
        selectedKeywords: null,
        selectedSupervisors: null
      }
    }


    this.filterLevel = this.filterLevel.bind(this);
    this.filterKeywords = this.filterKeywords.bind(this);
    this.filterSupervisors = this.filterSupervisors.bind(this);

  }

  applyFilters(filters) {
    var filteredIdeas = this.ideas;

    if (filters.selectedLevel) {
      filteredIdeas = filteredIdeas
        .filter(idea => idea.difficulty === filters.selectedLevel);
    }

    if (filters.selectedKeywords) {
      filteredIdeas = filteredIdeas
        .filter(idea => idea.keywords
          .some(x => filters.selectedKeywords.includes(x)));
    }

    if (filters.selectedSupervisors) {
      filteredIdeas = filteredIdeas
        .filter(idea => idea.supervisors
          .some(x => filters.selectedSupervisors.includes(x)));
    }

    this.setState({ ideasToDisplay: filteredIdeas, filters });
  }

  filterLevel(selectedLevel) {
    this.applyFilters({ ...this.state.filters, selectedLevel: selectedLevel });
  }

  filterKeywords(selectedKeywords) {
    this.applyFilters({ ...this.state.filters, selectedKeywords: selectedKeywords });
  }

  filterSupervisors(selectedSupervisors) {
    this.applyFilters({ ...this.state.filters, selectedSupervisors: selectedSupervisors });
  }

  componentDidMount() {
    document.title = "Pharo GSoC: Project Ideas";
  }

  render() {
    return (
      <div className="container">
        <h1>Pharo GSoC Project Ideas</h1>
        <p>Below is the list of project ideas that were proposed by the Pharo community. You can apply to any of those projects by sending an email to one of its mentors. Do not hesitate to propose your own idea but make sure that there is at least one mentor in the community who would agree to supervise you.</p>
        <aside>
          <FilterIdeasForm
            ideas={this.ideas}
            onLevelChange={this.filterLevel}
            onKeywordsChange={this.filterKeywords}
            onSupervisorsChange={this.filterSupervisors} />
        </aside>
        {
          chunk(this.state.ideasToDisplay, 5).map((chunk, i) =>
            <IdeasGrid key={i}>
              {
                chunk.map((idea) =>
                  <IdeaCard
                    key={idea.id}
                    idea={idea}
                  />
                )
              }
            </IdeasGrid>
          )
        }
      </div>
    )
  }
}

export function chunk(list, n) {
  const copy = Array.from(list)
  const result = []
  while (copy.length) {
    result.push(copy.splice(0, n))
  }
  return result
}

const translationsEN = {
  'context': 'Context',
  'goal': 'Goal',
  'mentors': 'Mentors',
  'look': 'Look this project in',
  'skills': 'Skills',
  'required': 'Required',
  'preferred': 'Preferred',
  'timeSize': 'Size',
  'expectedTime': '175 ~ 350 hour.',
  'difficulty': 'Difficulty',
  'Easy': 'Easy',
  'Medium': 'Medium',
  'Hard': 'Hard',
}

export default IdeasPage

import $ from "jquery";
import React from 'react';
import * as URLS from '../../constants/urls';
import IdeaCard from './IdeaCard';
import IdeaModal from './IdeaModal';
import IdeasGrid from './IdeasGrid';
import IdeaShortSummary from './IdeaShortSummary';
import './style.css';


const getContentsOfFileFromURL = url => {
  var result = null;
  $.ajax({
    url: url,
    type: 'get',
    dataType: 'text',
    async: false,
    success: function (data) {
      result = data;
    }
  });
  return result;
}

const getJsonFromURL = url =>
  JSON.parse(getContentsOfFileFromURL(url));

class IdeasPage extends React.Component {
  constructor() {
    super();

    this.ideas = getJsonFromURL(URLS.IDEAS_FILE);
    this.supervisors = getJsonFromURL(URLS.SUPERVISORS_FILE);

    // this.supervisors = this.supervisors
    // .map(each => {
    //   // Commented out because it is very slow :(

    //   /*const githubUser = each.github ?
    //     getJsonFromURL(`https://api.github.com/users/${each.github}`) :
    //     null;*/

    //   const githubUser = null;

    //   const picture = githubUser ? githubUser.avatar_url : null;
    //   return { ...each, pictureUrl: picture };
    // });

    this.state = {
      ideasToDisplay: this.ideas,
      showDetailedIdeaView: false,
      ideaToShowInDetailedView: null
    };

  }

  showIdea(idea) {
    this.setState({
      showDetailedIdeaView: true,
      ideaToShowInDetailedView: idea
    });
  }

  closeDetailedIdeaView() {
    this.setState({
      showDetailedIdeaView: false
    });
  }

  render() {
    const ideasHtml = this.state.ideasToDisplay.map(idea =>
      <IdeaShortSummary
        key={idea.title}
        idea={idea}
        onClick={e => this.showIdea(idea)} />
    );

    return (
      <div class="container">
        <h1>Project Ideas</h1>
        {
          chunk(this.ideas, 5).map((chunk, i) =>
            <IdeasGrid key={i}>
              {
                chunk.map((idea, i) =>
                  <IdeaCard
                    key={i}
                    projectLogo={idea.img}
                    projectName={idea.title}
                    projectDescription={idea.goal}
                    onClick={() => this.showIdea(idea)}
                  />
                )
              }
            </IdeasGrid>
          )
        }
        <IdeaModal
          open={this.state.showDetailedIdeaView}
          onClose={() => this.closeDetailedIdeaView()}
          idea={this.state.ideaToShowInDetailedView}
          translations={translationsEN}
        />
      </div>
    );
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
  'Beginner': 'Beginner',
  'Intermediate': 'Intermediate',
  'Advanced': 'Advanced',
}

export default IdeasPage;

import React from 'react';
import $ from "jquery";

import './style.css';
import IdeaShortSummary from './IdeaShortSummary';
import IdeaDetailedView from './IdeaDetailedView';
import FilterIdeasForm from './FilterIdeasForm';
import * as URLS from '../../constants/urls';


const getContentsOfFileFromURL = url => {
  var result = null;
  $.ajax({
    url: url,
    type: 'get',
    dataType: 'text',
    async: false,
    success: function(data) {
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

    this.state = {
      ideasToDisplay: this.ideas,
      showDetailedIdeaView: false,
      ideaToShowInDetailedView: null
    };

    this.filters = {
      selectedLevel: null,
      selectedKeywords: null,
      selectedSupervisors: null
    }

    this.filterLevel = this.filterLevel.bind(this);
    this.filterKeywords = this.filterKeywords.bind(this);
    this.filterSupervisors = this.filterSupervisors.bind(this);
    this.closeDetailedIdeaView = this.closeDetailedIdeaView.bind(this);
  }

  applyFilters() {
    var filteredIdeas = this.ideas;

    if (this.filters.selectedLevel) {
      filteredIdeas = filteredIdeas
        .filter(idea => idea.levels
          .includes(this.filters.selectedLevel));
    }

    if (this.filters.selectedKeywords) {
      filteredIdeas = filteredIdeas
        .filter(idea => idea.keywords
          .some(x => this.filters.selectedKeywords.includes(x)));
    }

    if (this.filters.selectedSupervisors) {
      filteredIdeas = filteredIdeas
        .filter(idea => idea.supervisors
          .some(x => this.filters.selectedSupervisors.includes(x)));
    }

    this.setState({ideasToDisplay: filteredIdeas});
  }

  filterLevel(selectedLevel) {
    this.filters.selectedLevel = selectedLevel;
    this.applyFilters();
  }

  filterKeywords(selectedKeywords) {
    this.filters.selectedKeywords = selectedKeywords;
    this.applyFilters();
  }

  filterSupervisors(selectedSupervisors) {
    this.filters.selectedSupervisors = selectedSupervisors;
    this.applyFilters();
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
      <main>
        <h1>Project Ideas</h1>
        <aside>
          <FilterIdeasForm
            ideas={this.ideas}
            onLevelChange={this.filterLevel}
            onKeywordsChange={this.filterKeywords}
            onSupervisorsChange={this.filterSupervisors} />
        </aside>
        <article>
          <div className="ideas">
            <IdeaDetailedView
              show={this.state.showDetailedIdeaView}
              idea={this.state.ideaToShowInDetailedView}
              supervisors={this.supervisors}
              onClose={this.closeDetailedIdeaView} />
            {ideasHtml}
          </div>
        </article>
      </main>
    );
  }
}

export default IdeasPage;

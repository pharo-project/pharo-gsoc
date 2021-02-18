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

    this.filterKeywords = this.filterKeywords.bind(this);
    this.filterSupervisors = this.filterSupervisors.bind(this);
    this.closeDetailedIdeaView = this.closeDetailedIdeaView.bind(this);
  }

  filterKeywords(selectedKeywords) {
    this.setState({
      ideasToDisplay: this.ideas
        .filter(idea => idea.keywords.some(x => selectedKeywords.includes(x)))
    });
  }

  filterSupervisors(selectedSupervisors) {
    this.setState({
      ideasToDisplay: this.ideas
        .filter(idea => idea.supervisors.some(x => selectedSupervisors.includes(x)))
    });
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

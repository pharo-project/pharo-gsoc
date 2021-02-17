import React from 'react';

import './style.css';
import lightbulb from './img/lightbulb.png';

const ProjectIdeaShortSummary = (props) => (
  <div class="idea-summary">
    <img src={lightbulb} />
    <div class="idea-summary-title">{props.idea.title}</div>
    <p class="idea-summary-description">{props.idea.goal}</p>
  </div>
);

export default ProjectIdeaShortSummary;

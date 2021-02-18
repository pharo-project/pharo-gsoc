import React from 'react';

import './style.css';
import lightbulb from './img/lightbulb.png';

const IdeaShortSummary = (props) => (
  <div className="idea-summary" onClick={e => props.onClick(this)}>
    <img src={lightbulb} alt="lightbulb" />
    <div className="idea-summary-title">{props.idea.title}</div>
    <p className="idea-summary-description">{props.idea.goal}</p>
  </div>
);

export default IdeaShortSummary;

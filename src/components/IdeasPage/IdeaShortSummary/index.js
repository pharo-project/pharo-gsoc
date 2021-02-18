import React from 'react';

import './style.css';
import lightbulb from './img/lightbulb.png';

const IdeaShortSummary = (props) => (
  <div className="idea-summary" onClick={e => props.onClick(this)}>
    <div>
      <img src={lightbulb} alt="lightbulb" />
      <p className="idea-summary-title">{props.idea.title}</p>
    </div>
    <p className="idea-summary-description">{`Keywords: ${props.idea.keywords.join(', ')}`}</p>
  </div>
);

export default IdeaShortSummary;

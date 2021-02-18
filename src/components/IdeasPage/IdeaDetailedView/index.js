import React from 'react';

import './style.css';

const IdeaDetailedView = (props) => {
  if (!props.show) {
    return null;
  }

  return (
    <div className="modal-background" onClick={props.onClose}>
      <div className="modal">
        <h2>{props.idea.title}</h2>
        <p>{props.idea.context}</p>
        <p>{props.idea.goal}</p>
      </div>
    </div>
  );
}

export default IdeaDetailedView;

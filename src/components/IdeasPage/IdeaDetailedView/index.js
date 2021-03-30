import React from 'react';

import './style.css';
import ComplexityMarker from '../ComplexityMarker';
import SupervisorMarker from '../SupervisorMarker';

class IdeaDetailedView extends React.Component {
  stopEventPropagation(e) {
    e.preventDefault();
    e.stopPropagation();
    return false;
  }

  render() {
    if (!this.props.show) {
      return null;
    }

    const supervisorMarkers = this.props.idea.supervisors.map(supervisorName => {
      var supervisor = this.props.supervisors.find(each => each.name === supervisorName);
      console.log(supervisor);
      return <SupervisorMarker supervisor={supervisor} />
    });

    const complexityMarkers = this.props.idea.levels.map(level =>
      <ComplexityMarker value={level} />
    );

    return (
      <div className="IdeaDetailedView modal-background" onClick={this.props.onClose}>
        <div className="modal" onClick={this.stopEventPropagation}>
          <h2>{this.props.idea.title}</h2>

          <div className="complexity-markers">
            Complexity:
            {complexityMarkers}
          </div>

          <h4>Mentors</h4>
          <div className="supervisor-markers">
            {supervisorMarkers}
          </div>

          <h4>Context</h4>
          <p>{this.props.idea.context}</p>

          <h4>Goal</h4>
          <p>{this.props.idea.goal}</p>
        </div>
      </div>
    );
  }
}

export default IdeaDetailedView;

import React from 'react';

import './style.css';

import CheckboxesForm from './CheckboxesForm';
import LevelSelectionForm from './LevelSelectionForm';


class FilterIdeasForm extends React.Component {
  constructor(props) {
    super(props);

    this.supervisors = [...new Set(this.props.ideas.map(idea => idea.supervisors).flat())].sort();
    this.keywords = [...new Set(this.props.ideas.map(idea => idea.keywords).flat())].sort();
  }

  render() {
    return (
      <div>
        <LevelSelectionForm
          onChange={this.props.onLevelChange} />

        <CheckboxesForm
          title='Keywords'
          items={this.keywords}
          onChange={this.props.onKeywordsChange} />

        <CheckboxesForm
          title='Supervisors'
          items={this.supervisors}
          onChange={this.props.onSupervisorsChange} />
      </div>
    );
  }
}

export default FilterIdeasForm;

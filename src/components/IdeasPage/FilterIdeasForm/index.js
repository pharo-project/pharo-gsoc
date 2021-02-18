import React from 'react';

import './style.css';

import CheckboxesForm from './CheckboxesForm';


class FilterIdeasForm extends React.Component {
  constructor(props) {
    super(props);

    this.levels = [...new Set(this.props.ideas.map(idea => idea.levels).flat())].sort();
    this.supervisors = [...new Set(this.props.ideas.map(idea => idea.supervisors).flat())].sort();
    this.keywords = [...new Set(this.props.ideas.map(idea => idea.keywords).flat())].sort();
  }

  render() {
    const levelsRadiobuttons = this.levels.map(level =>
      <div key={level}>
        <label>
          <input type="radio" id={level} name="level" value={level} />
          {level}
        </label>
      </div>
    );

    return (
      <div>
        <form>
          <h3>Level</h3>
          {levelsRadiobuttons}
        </form>

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

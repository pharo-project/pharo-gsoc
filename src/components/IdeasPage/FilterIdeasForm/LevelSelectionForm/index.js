import React from 'react';


class LevelSelectionForm extends React.Component {
  constructor(props) {
    super(props);

    this.ALL_LEVELS = 'All Levels';

    this.levels = [
      this.ALL_LEVELS,
      'Beginner',
      'Intermediate',
      'Advanced'
    ];

    this.state = {
      selectedLevel: this.ALL_LEVELS
    };

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(event) {
    const newSelectedLevel = event.target.value;

    this.setState({
      selectedLevel: newSelectedLevel
    });

    this.props.onChange(
      newSelectedLevel === this.ALL_LEVELS ? null : newSelectedLevel
    );
  }

  render() {
    const radiobuttons = this.levels.map(level =>
      <div key={level}>
        <label>
          <input
            type="radio"
            value={level}
            onChange={this.handleChange}
            checked={this.state.selectedLevel === level} />
          {level}
        </label>
      </div>
    );

    return (
      <form>
        <h3>Level</h3>
        {radiobuttons}
      </form>
    );
  }
}

export default LevelSelectionForm;

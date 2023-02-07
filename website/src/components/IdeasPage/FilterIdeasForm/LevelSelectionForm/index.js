import { FormControl, FormControlLabel, Radio, RadioGroup } from '@mui/material'
import React from 'react'
import { diffcultyEmoji } from '../../../IdeaPage'
import FilterGroup from '../FilterGroup'

class LevelSelectionForm extends React.Component {
  constructor(props) {
    super(props)

    this.ALL_LEVELS = 'All Levels'

    this.levels = [
      this.ALL_LEVELS,
      ...Object.keys(diffcultyEmoji)
    ]

    this.state = {
      selectedLevel: this.ALL_LEVELS
    }

    this.handleChange = this.handleChange.bind(this)
  }

  handleChange(event) {
    const newSelectedLevel = event.target.value

    this.setState({
      selectedLevel: newSelectedLevel
    })

    this.props.onChange(
      newSelectedLevel === this.ALL_LEVELS ? null : newSelectedLevel
    )
  }

  render() {
    const radiobuttons = this.levels.map(level =>
      <FormControlLabel key={level} value={level} control={<Radio />} label={level} />
    )

    return (
      <FilterGroup title="Level">
        <FormControl>
          <RadioGroup
            aria-labelledby="demo-radio-buttons-group-label"
            defaultValue={this.ALL_LEVELS}
            onChange={this.handleChange}
          >
            {radiobuttons}
          </RadioGroup>
        </FormControl>
      </FilterGroup>
    )
  }
}

export default LevelSelectionForm

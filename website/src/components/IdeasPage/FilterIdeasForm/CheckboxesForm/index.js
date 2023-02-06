import { Checkbox, FormControlLabel } from '@mui/material';
import React from 'react';
import FilterGroup from '../FilterGroup';


class CheckboxesForm extends React.Component {
  constructor(props) {
    super(props);
    this.items = props.items;

    this.state = {
      selectedItems: this.items,
      showList: false
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleAllChange = this.handleAllChange.bind(this);
    this.selectAll = this.selectAll.bind(this);
    this.deselectAll = this.deselectAll.bind(this);
    this.toggleList = this.toggleList.bind(this);
  }

  handleChange(event, item) {
    const isChecked = event.target.checked;

    const newSelectedItems = [...this.state.selectedItems]
      .filter(each => each !== item); // Remove if present

    if (isChecked) { // Add if checked
      newSelectedItems.push(item);
    }

    this.setState({
      selectedItems: newSelectedItems
    });

    this.props.onChange(newSelectedItems);
  }

  handleAllChange(event) {
    const isChecked = event.target.checked;

    if (isChecked) {
      this.selectAll();
    } else {
      this.deselectAll();
    }
  }

  selectAll() {
    this.setState({
      selectedItems: this.items
    });

    this.props.onChange(this.items);
    return false;
  }

  deselectAll() {
    this.setState({
      selectedItems: []
    });

    this.props.onChange([]);
    return false;
  }

  toggleList() {
    this.setState({
      showList: !this.state.showList
    });
  }

  render() {
    const checkboxes = this.items.map(each =>
      <FormControlLabel
        key={each}
        label={each}
        control={<Checkbox
          onChange={e => this.handleChange(e, each)}
          checked={this.state.selectedItems.includes(each)}
        />}
      />
    );

    const collapsibleList = (
      <div>
        <FormControlLabel
          label="All"
          control={
            <Checkbox
              checked={this.items.length === this.state.selectedItems.length}
              indeterminate={this.state.selectedItems.length > 0 && this.state.selectedItems.length < this.items.length}
              onChange={this.handleAllChange}
            />
          }
        />
        <br />
        {checkboxes}
      </div>
    );

    return (
      <FilterGroup title={this.props.title}>
        {collapsibleList}
      </FilterGroup>
    );
  }
}

export default CheckboxesForm;

import React from 'react';


class CheckboxesForm extends React.Component {
  constructor(props) {
    super(props);
    this.items = props.items;

    this.state = {
      selectedItems: this.items,
      showList: false
    };

    this.handleChange = this.handleChange.bind(this);
    this.selectAll = this.selectAll.bind(this);
    this.deselectAll = this.deselectAll.bind(this);
    this.toggleList = this.toggleList.bind(this);
  }

  handleChange(event) {
    const item = event.target.name;
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
      <div key={each}>
        <label>
          <input
            type="checkbox"
            name={each}
            onChange={this.handleChange}
            checked={this.state.selectedItems.includes(each)} />
          {each}
        </label>
      </div>
    );

    const collapsibleList = (
      <div>
        <div className='select-deselect-all'>
          <a href='javascript:void(0)' onClick={this.selectAll}>Select all</a>
          <a href='javascript:void(0)' onClick={this.deselectAll}>Deselect all</a>
        </div>
        {checkboxes}
      </div>
    );

    return (
      <form>
        <h3 onClick={this.toggleList}>{this.props.title}</h3>
        {this.state.showList ? collapsibleList : null}
      </form>);
  }
}

export default CheckboxesForm;

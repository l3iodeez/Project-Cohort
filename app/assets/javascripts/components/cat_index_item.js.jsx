var CatIndexItem = React.createClass({
  handleClick: function () {
    this.props.selectCat(this.props.cat);
  },
  render: function() {
    return (
      <li key={this.props.cat.id} onClick={this.handleClick}>
        {this.props.cat.name} <br />
        {this.props.cat.race}
      </li>
    );
  }
});

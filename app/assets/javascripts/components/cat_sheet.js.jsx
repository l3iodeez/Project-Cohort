var Catsheet = React.createClass({
  mixins: [React.addons.LinkedStateMixin],

  getInitialState: function() {
    return {};
  },
  componentWillReceiveProps: function (newProps) {
      this.setState({
     id: newProps.selectedCat.id,
     name: newProps.selectedCat.name,
     race: newProps.selectedCat.race,
     catClasses: JSON.stringify(newProps.selectedCat.catClasses)
   });
  },
  handleSubmit: function (e) {
    e.preventDefault();
    var cat = {
      id: this.state.id,
      name: this.state.name,
      race: this.state.race,
      catClasses: JSON.parse(this.state.catClasses)
    };
    CatsAPIUtil.editCat(cat);
  },
  render: function() {
    return (
      <form onSubmit={this.handleSubmit}>
        Character Info: <br />
        <label htmlFor="charName" >Name:</label>
        <input type="text" name="charName" valueLink={this.linkState('name')} /><br />
        <label htmlFor="charRace" >Race:</label>
        <input type="text" name="charRace" valueLink={this.linkState('race')}  /><br />
        <label htmlFor="charClass" >Classes:</label>
        <input type="text" name="charClass" valueLink={this.linkState('catClasses')}  /><br />
        <button>Save</button>
      </form>
    );
  }
});

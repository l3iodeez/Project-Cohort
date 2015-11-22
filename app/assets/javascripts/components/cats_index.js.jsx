var CatsIndex = React.createClass({
  getInitialState: function() {
    return {cats: CatStore.all()};
  },
  catsChanged: function (cats) {
    this.setState({cats: CatStore.all()});
  },
  componentDidMount: function() {
    CatStore.addChangeListener(this.catsChanged);
    CatsAPIUtil.fetchAllCats();
  },
  componentWillUnmount: function() {
    CatStore.removeChangeListener(this.catsChanged);
  },
  render: function() {
    return (
      <ul className="cats-index" >
        {
          this.state.cats.map(function (cat) {
            return (
            <CatIndexItem cat={cat} selectCat={this.props.selectCat} />
            );
          }.bind(this))
        }
      </ul>

    );
  }
});

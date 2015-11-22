$(document).on('ready', function () {
  var Router = ReactRouter.Router;
  var Route =  ReactRouter.Route;
  var IndexRoute = ReactRouter.IndexRoute;
  var root = document.getElementById('root');



  var Cohort = React.createClass({
    getInitialState: function () {
      return {cat: {}};
    },
    selectCat: function (cat) {
      this.setState({selectedCat: cat});
    },
    render: function() {
      return (
        <div>
          <div className="col-34" id="menu-panel" >
            <CatsIndex selectCat={this.selectCat} />
          </div>
          <div className="col-66" id="view-panel" >
            <Catsheet selectedCat={this.state.selectedCat} />
          </div>
        </div>
      );
    }
  });
  var router = (
  <Router>
    <Route path="/" component={Cohort}>
    </Route>
  </Router>
  );
  React.render(router, root);


});

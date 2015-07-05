var Character = React.createClass({
	getInitialState: function() {
		return {
			name: "Mewmao",
			race: "Jar cat",
			charCls: [
				{charClass:"Mew", level:4}, 
				{charClass:"Floof", level:4}
			],
			newClass: []
		}
	},
	handleChangeName: function(e) {
		this.setState({name: e.target.value});
	},
	handleChangeRace: function(e) {
		this.setState({race: e.target.value});
	},
	handleChangeClass: function() {
		//[{"class" => "Bard", "level" => 5},{"class" => "Rogue", "level" => 2}]

	},
	handleSaveChanges: function() {
		alert(this.state.charCls[0].level)

	},
	render: function() {
		//var test = this.state.charClass;
		return (
			<div>
				Character Info: <br />
				Name: <span>{this.state.name} </span> <br />
				Race: <span>{this.state.race} </span> <br />
				Class: <CharClasses classes={this.state.charCls} /> <br />
				<button onClick={this.handleSaveChanges}>Save</button>
			</div>
		)
	}
})

var CharClasses = React.createClass({
	getInitialState: function() {
		var tmpSchema = {};

		for (var classIdx in this.props.classes)
		{

			var classEntry = this.props.classes[classIdx];
			tmpSchema[classEntry.charClass] = classEntry
		}
		return {newLevel : this.props.classes, schemata : tmpSchema}
	},
	updateSchemata: function(e) {
		var changedClass = e.target.getAttribute("data");
		var tmpSchemata = this.state.schemata;
		//alert(schemata);
		tmpSchemata[changedClass]["level"] = e.target.value;
		this.setState({
			schemata: tmpSchemata
		})
	},
	invertDictionary: function(dict) {
		var newDict = {};

		for (var prop in dict) {
			if(dict.hasOwnProperty(prop)) {
				newDict[dict[prop]] = prop;
			}
		}
	},
	render: function() {
		var listClasses = function(cClass) {
			return (
				<span>
					<span>{cClass.charClass} </span>
					<input type="text" data={cClass.charClass} value={cClass.level} onChange={this.updateSchemata} />
					<br />
				</span>
				);
		}
		return (
			<div>
				{this.props.classes.map(listClasses, this)}
			</div>
		)
	}

})


React.render(<Character />, document.getElementById('view-panel'));
import React from 'react';
import Select from 'react-select';
import 'react-select/dist/react-select.css';
import './Search.css';

import SelectField from 'material-ui/SelectField';
import MenuItem from 'material-ui/MenuItem';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import RaisedButton from 'material-ui/RaisedButton';

class Search extends React.Component {
  state = {
    selectedBus: '96',
    selectedStart: undefined,
    selectedEnd: undefined,
    timeTillArrival: 'Start',
  }
  render() {
    const busStopOptions = (this.props.buses[this.state.selectedBus] || [])
      .map((code) => {
        const description = (this.props.busStops[code] || {}).description;
        return {
          value: description,
          label: description,
        };
      });
    return (
      <MuiThemeProvider >
        <div className="Search">
          <div className="busSearch">
          Bus
          <Select
            className="busSelect"
            clearable={false}
            value={this.state.selectedBus}
            onChange={selectedBus => this.setState({ selectedBus: selectedBus.value })}
            options={Object.keys(this.props.buses).map(bus => ({
              value: bus,
              label: bus,
            }))}
          />
          </div>
          <div className="busSearch">
          Start
          <Select
            className="busSelect"
            clearable={false}
            value={this.state.selectedStart}
            onChange={selectedStart => this.setState({ selectedStart: selectedStart.value })}
            options={busStopOptions}
          />
          </div>
          <div className="busSearch">
          Stop
          <Select
            className="busSelect"
            clearable={false}
            value={this.state.selectedEnd}
            onChange={selectedEnd => this.setState({ selectedEnd: selectedEnd.value })}
            options={busStopOptions}
          />
          </div>


          <div>
            <SelectField
              floatingLabelText="How long before arrival to notify?"
              value={1}
            >
              <MenuItem value={1} primaryText="2min" />
              <MenuItem value={2} primaryText="5min" />
              <MenuItem value={3} primaryText="10min" />
            </SelectField>
          </div>

          <RaisedButton
            label={this.state.timeTillArrival}
            className="startButton"
            primary
            onClick={() => this.setState({ timeTillArrival: 'Bus arriving in 5min...' })}
          />

          <div>
            <SelectField
              floatingLabelText="Bus"
              value={1}
              onChange={selectedBus => this.setState({ selectedBus })}
            >
              <MenuItem value={1} primaryText="96" />
              <MenuItem value={2} primaryText="95" />
            </SelectField>
          </div>

        </div>
      </MuiThemeProvider >

    );
  }
}

export default Search;

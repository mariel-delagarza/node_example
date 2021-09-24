import React from "react";
import ReactDOM from "react-dom";
import { request } from "graphql-request";
var url = "http://localhost:4000/graphql";

var query = `
query getAllBugs {
  bug {
    name
  }
}`;

const App = ({ bugs = [] }) => (
  <div>
    {bugs.map((bug) => (
      <div key={bug.name}>{bug.name}</div>
    ))}
  </div>
);

const render = ({ allBugs = [] }) =>
  ReactDOM.render(<App bugs={allBugs} />, document.getElementById("root"));

const requestAndRender = () =>
  request(url, query).then(render).catch(console.error);

requestAndRender();

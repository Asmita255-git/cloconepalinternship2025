import { employeeData } from "./data.js";

const employeeListEl = document.getElementById("employee-list");
const uniqueEmployees = [...new Set(employeeData.map((emp) => emp.name))];

uniqueEmployees.forEach((name) => {
  const listItem = document.createElement("li");
  listItem.innerHTML = `<a href="#" data-name="${name}">${name}</a>`;
  employeeListEl.appendChild(listItem);
});
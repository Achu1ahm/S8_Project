// Declare variables for DOM elements
const form = document.querySelector('#project-form');
const projectList = document.querySelector('#project-list');
const projectNameInput = document.querySelector('#project-name');
const projectDescriptionInput = document.querySelector('#project-description');

// Declare an empty array to hold projects
let projects = [];

// Add event listener to form
form.addEventListener('submit', addProject);

// Add a project to the list
function addProject(e) {
  e.preventDefault();
  const project = {
    id: Date.now(),
    name: projectNameInput.value,
    description: projectDescriptionInput.value
  };
  projects.push(project);
  displayProjects();
  form.reset();
}

// Display all projects
function displayProjects() {
  // Clear the project list
  projectList.innerHTML = '';
  // Loop through the projects array
  projects.forEach((project) => {
    // Create a new li element
    const li = document.createElement('li');
    li.classList.add('project');
    // Create a new h3 element
    const h3 = document.createElement('h3');
    h3.textContent = project.name;
    // Create a new p element
    const p = document.createElement('p');
    p.textContent = project.description;
    // Append the h3 and p elements to the li element
    li.appendChild(h3);
    li.appendChild(p);
    // Append the li element to the project list
    projectList.appendChild(li);
  });
}


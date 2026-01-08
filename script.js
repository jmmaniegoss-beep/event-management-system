document.getElementById("eventForm").addEventListener("submit", function(e) {
  e.preventDefault();

  let name = document.getElementById("eventName").value;
  let date = document.getElementById("eventDate").value;

  if (name.length < 3) {
    alert("Event name must be at least 3 characters.");
    return;
  }

  alert("Event added successfully!");
});

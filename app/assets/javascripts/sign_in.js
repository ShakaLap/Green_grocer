//
//     function handleSignIn(event) {
//     event.preventDefault();
//     const signInForm = event.target;
//     const formData = new FormData(signInForm);
//
//     // Convert FormData to a plain object
//     const data = {
//     user: {
//     email: formData.get('user[email]'),
//     password: formData.get('user[password]')
// }
// };
//
//     fetch(signInForm.action, {
//     method: 'POST',
//     headers: {
//     'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content,
//     'Content-Type': 'application/json',
//     'Accept': 'application/json'
// },
//     body: JSON.stringify(data) // Convert the data object to a JSON string
// }).then(response => {
//     if (response.ok) {
//     const token = response.headers.get('Authorization').split(' ')[1];
//     localStorage.setItem('jwt', token);
//     window.location.href = '/';
// } else {
//     response.json().then(data => {
//     console.error('Sign in failed:', data);
// });
// }
// }).catch(error => {
//     console.error('Error during fetch:', error);
// });
// }

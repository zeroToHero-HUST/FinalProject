let editBtnList = document.querySelectorAll('.editBtn');
let delBtnList = document.querySelectorAll('.delBtn');
let inputFormFirstName = document.getElementById('inputFormFirstName');
let inputFormLastName = document.getElementById('inputFormLastName');
let inputFormEmail = document.getElementById('inputFormEmail');
let userEdited = document.getElementById('userEdited');
let inputFormRole = document.getElementById('inputFormRole');
let inputFormUserId = document.getElementById('inputFormUserId');
let inputFormPassword = document.getElementById('inputFormPassword');

let formDelUser = document.getElementById('delete-user');
let formDelUserID = document.getElementById('formDelUserID');
let formDelUserEmail = document.getElementById('formDelUserEmail');

editBtnList.forEach((editBtn) =>
{
    let id = editBtn.id;
    let tdInsertInput = document.querySelectorAll('.' + id);


    editBtn.addEventListener('click', () =>
    {
        inputFormPassword.setAttribute('hidden', '')
        userEdited.innerHTML = tdInsertInput[0].innerHTML;
        inputFormFirstName.setAttribute('value', tdInsertInput[2].innerHTML);
        inputFormLastName.setAttribute('value', tdInsertInput[3].innerHTML);
        inputFormEmail.setAttribute('value', tdInsertInput[1].innerHTML);
        inputFormRole.setAttribute('value', tdInsertInput[4].innerHTML);
        inputFormUserId.setAttribute('value', tdInsertInput[0].innerHTML);
    });
});

delBtnList.forEach((delBtn) =>
{
    let id = delBtn.id;
    let tdInsertInput = document.querySelectorAll('.' + id);

    delBtn.addEventListener('click', () =>
    {
        formDelUserID.setAttribute('value', tdInsertInput[0].innerHTML);
        formDelUserEmail.setAttribute('value', tdInsertInput[1].innerHTML);
        formDelUser.submit();
    })
})
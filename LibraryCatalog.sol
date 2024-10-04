// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LibraryCatalog {
    struct Book {
        uint id;
        string title;
        string author;
        uint year;
    }

    Book[] public books;
    uint public nextId = 0;

    function addBook(string memory title, string memory author, uint year) public returns (uint) {
        books.push(Book(nextId, title, author, year));
        nextId += 1;
        return nextId - 1;
    }

    function getBooks() public view returns (Book[] memory) {
        return books;
    }
}

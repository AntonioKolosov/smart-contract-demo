// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract Exercises {
    // Create structure
    struct Book {
        string title;
        string author;
        uint16 pages;
    }

    // Create dynamic array with Book data structure
    Book[] public books;

    // Impliment addBook function with incapsulation
    function addBook(string memory _title, string memory _author, uint16 _pages) public {
        books.push(Book({title: _title, author: _author, pages: _pages}));
    }

    // Get all books by ID
    function getAllBooks() public view returns (Book[] memory) {
        return books;
    }
}
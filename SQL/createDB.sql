CREATE DATABASE [vGames2];
USE [vGames2]; GO

CREATE TABLE [USER] 
(
    [UserId] INTEGER PRIMARY KEY IDENTITY(1,1),
    [login_name] NVARCHAR(50) not null,
    [email] NVARCHAR(255) not null,
    [pass] NVARCHAR(255) not null,
    [birthday] DATE not null,
    [country] NVARCHAR,
    [gameWishList] INTEGER,
    [accountCreationDate] DATETIME,
)
CREATE TABLE COMMENT
(
    [CommentId] INTEGER PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(50),
    [Comment] NVARCHAR(500),
)

CREATE TABLE GAME
(
    [GameId] INTEGER PRIMARY KEY IDENTITY(1,1),
    [GameId_API] NVARCHAR(50),
    [NameGame_API] NVARCHAR(500),
    [GenreGame_API] NVARCHAR(50) not NULL
)

CREATE TABLE COMMENT_ID_GAME
(
    [CommentIdGame] INTEGER PRIMARY KEY IDENTITY(1,1),
    [CommentId] INTEGER FOREIGN KEY REFERENCES COMMENT (CommentId),
    [GameId] INTEGER FOREIGN KEY REFERENCES GAME (GameId) , 
    [UserId] INTEGER FOREIGN KEY REFERENCES [USER] (UserId)
)


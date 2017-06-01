
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/01/2017 09:41:51
-- Generated from EDMX file: c:\users\bob\documents\visual studio 2017\Projects\Demo5Lagen001\Demo5Lagen001\Demo5Lagen001.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [D5L];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'DocentSet'
CREATE TABLE [dbo].[DocentSet] (
    [DocentCode] int IDENTITY(1,1) NOT NULL,
    [Naam] nvarchar(max)  NOT NULL,
    [Opleiding] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'StudentSet'
CREATE TABLE [dbo].[StudentSet] (
    [Studentnummer] int IDENTITY(1,1) NOT NULL,
    [Naam] nvarchar(max)  NOT NULL,
    [Opleiding] nvarchar(max)  NOT NULL,
    [Klas] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DocentStudent'
CREATE TABLE [dbo].[DocentStudent] (
    [Docent_DocentCode] int  NOT NULL,
    [Student_Studentnummer] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [DocentCode] in table 'DocentSet'
ALTER TABLE [dbo].[DocentSet]
ADD CONSTRAINT [PK_DocentSet]
    PRIMARY KEY CLUSTERED ([DocentCode] ASC);
GO

-- Creating primary key on [Studentnummer] in table 'StudentSet'
ALTER TABLE [dbo].[StudentSet]
ADD CONSTRAINT [PK_StudentSet]
    PRIMARY KEY CLUSTERED ([Studentnummer] ASC);
GO

-- Creating primary key on [Docent_DocentCode], [Student_Studentnummer] in table 'DocentStudent'
ALTER TABLE [dbo].[DocentStudent]
ADD CONSTRAINT [PK_DocentStudent]
    PRIMARY KEY CLUSTERED ([Docent_DocentCode], [Student_Studentnummer] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Docent_DocentCode] in table 'DocentStudent'
ALTER TABLE [dbo].[DocentStudent]
ADD CONSTRAINT [FK_DocentStudent_Docent]
    FOREIGN KEY ([Docent_DocentCode])
    REFERENCES [dbo].[DocentSet]
        ([DocentCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Student_Studentnummer] in table 'DocentStudent'
ALTER TABLE [dbo].[DocentStudent]
ADD CONSTRAINT [FK_DocentStudent_Student]
    FOREIGN KEY ([Student_Studentnummer])
    REFERENCES [dbo].[StudentSet]
        ([Studentnummer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DocentStudent_Student'
CREATE INDEX [IX_FK_DocentStudent_Student]
ON [dbo].[DocentStudent]
    ([Student_Studentnummer]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
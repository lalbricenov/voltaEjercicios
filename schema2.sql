CREATE TABLE keywords(id INTEGER PRIMARY KEY, word TEXT NOT NULL);
-- CREATE TABLE assetTypes(id INTEGER PRIMARY KEY, 'type' TEXT NOT NULL);
CREATE TABLE assets(
    id INTEGER PRIMARY KEY,
    'name' TEXT NOT NULL,
    type TEXT NOT NULL,
    'url' TEXT NOT NULL,
    CONSTRAINT chk_Type CHECK (type IN ('Image', 'Video', 'Document'))
);
CREATE TABLE problems (
    id INTEGER PRIMARY KEY,
    name text NOT NULL
);
CREATE TABLE keywordAssignments(
    id INTEGER PRIMARY KEY,
    problemId INTEGER NOT NULL,
    keywordId INTEGER NOT NULL,
    FOREIGN KEY (keywordId) REFERENCES keywords(id),
    FOREIGN KEY (problemId) REFERENCES problems(id)
);
CREATE TABLE assetsAssignment(
    id INTEGER PRIMARY KEY,
    assetId INTEGER NOT NULL,
    problemId INTEGER NOT NULL,
    type TEXT NOT NULL,
    FOREIGN KEY(assetId) REFERENCES assets(id),
    FOREIGN KEY(problemId) REFERENCES problems(id),
    CONSTRAINT chk_Type CHECK (type IN ('Question', 'Answer'))
);
USE ifcSQL;
GO

IF OBJECT_ID('ifcProject.ProjectExternalMap', 'U') IS NULL
BEGIN
  CREATE TABLE ifcProject.ProjectExternalMap (
    ProjectId INT NOT NULL PRIMARY KEY,
    ExternalProjectId BIGINT NOT NULL UNIQUE
  );

  ALTER TABLE ifcProject.ProjectExternalMap
  ADD CONSTRAINT FK_ProjectExternalMap_Project
  FOREIGN KEY (ProjectId)
  REFERENCES ifcProject.Project(ProjectId);
END
GO
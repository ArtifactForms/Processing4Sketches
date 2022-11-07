import workspace.Workspace;
import mesh.Mesh3D;

Workspace workspace;
Mesh3D mesh;

void setup() {
  size(1000, 1000, P3D);
  workspace = new Workspace(this);
  workspace.setGridVisible(true);
  workspace.setUiVisible(true);
  createMesh();
}

void draw() {
  workspace.draw(mesh);
}

void createMesh() {
  mesh = new Mesh3D();
  mesh.addVertex(-1, -1, 0);
  mesh.addVertex(1, -1, 0);
  mesh.addVertex(1, 1, 0);
  mesh.addVertex(-1, 1, 0);
  mesh.addFace(0, 1, 2);
  mesh.addFace(2, 3, 0);
}

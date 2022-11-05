import mesh.Mesh3D;
import mesh.creator.primitives.CubeCreator;
import workspace.Workspace;

Mesh3D mesh;
Workspace workspace;

void setup() {
  fullScreen(P3D);
  smooth(8);
  mesh = new CubeCreator().create();
  workspace = new Workspace(this);
  workspace.setUiVisible(true);
  workspace.setGridVisible(true);
}

void draw() {
  workspace.draw(mesh);
  stroke(230, 230, 0);
  line(-16, -2, 0, 16, -2, 0);
  stroke(230, 0, 0);
  line(0, -2, -16, 0, -2, 16);
}

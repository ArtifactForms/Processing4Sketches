/**
 * Hello workspace!
 *
 * Hold the middle mouse button and drag -> Rotates the view
 * Press SHIFT+hold the middle mouse button and drag -> Pans the view
 * Scroll the mouse wheel -> Zooms in or out
 *
 * Default Key Bindings:
 * ---------------------------------------------------------------------------
 * Key: Result
 * ---------------------------------------------------------------------------
 * g: Shows or hides the grid
 * n: Shows or hides the face normal markers
 * v: Shows or hides the vertex normal markers
 * z: Toggles wire frame mode
 * 1: Shows or hides the X-Axis marker
 * 2: Shows or hides the Y-Axis marker
 * 3: Shows or hides the Y-Axis marker
 * e: Shows or hides edges
 * s: Toggles shading (smooth/flat)
 * y: Shows or hides the UI
 * 4: First person view (W,A,S,D)
 * ESC: Exits the application
 * ---------------------------------------------------------------------------
 */
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
}

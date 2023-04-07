void trees(float [] trX, float [] trY, float tv, float d1, float d2) {
  for (int i = 0; i < trX.length; i++) {
    fill(150, 100, 0);
    rect(trX[i], trY[i], d1, d2);
    trX[i] += tv;

    if (treeX[i] < -100) {
      treeX[i] = width;
    }
    if (treeA[i] < -100) {
      treeA[i] = width;
    }
  }
}

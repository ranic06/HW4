void trees() {
  for (int i = 0; i < treeX.length; i++) {
    fill(150, 100, 0);
    rect(treeX[i], treeY[i], d/4, d*9/10);
  }
  for (int i = 0; i < treeX.length; i++) {
    treeX[i] += treeSpeed;

    if (treeX[i] < -100) {
      treeX[i] = width;
    }
  }

  for (int i = 0; i < treeA.length; i++) {
    fill(150, 100, 0);
    rect(treeA[i], treeB[i], d/4, d*3/2);
  }
  for (int i = 0; i < treeA.length; i++) {
    treeA[i] += treeSpeed;

    if (treeA[i] < -100) {
      treeA[i] = width;
    }
  }
}

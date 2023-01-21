int getScreenGrid(double sw) {
  int gs = 1;
  if (sw <= 480) {
    gs = 1;
  } else if (sw > 480 && sw <= 768) {
    gs = 2;
  } else if (sw > 768 && sw <= 960) {
    gs = 3;
  } else if (sw > 960 && sw <= 1140) {
    gs = 4;
  } else if (sw > 1140 && sw <= 1280) {
    gs = 5;
  } else if (sw > 1280 && sw <= 1390) {
    gs = 6;
  } else if (sw > 1390) {
    gs = 7;
  }
  return gs;
}

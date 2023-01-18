#include "bitmap.hh"

#include <webp/decode.h>
#include <webp/encode.h>

#include <fstream>
#include <random>

using namespace std;
/*
        AUTHOR: Justin Chen
        CITE: cite any sources you used other than the ones given
        PLEDGE
*/

/*
        In order to compile you will need to install libwebp, a new graphics
        standard from google. Most image programs won't yet work with webp,
        which is better compression than jpeg in general.
        In order to install under msys2:
        https://packages.msys2.org/package/mingw-w64-x86_64-libwebp
        In order to access a particular element of this bitmap (x,y) use the
        following equation point(x,y) does this
        y*w + x
        this works because the first point is 0*w+0 = 0, the second would be
   0*w+1 one row down would be 1*w + 0
 */

bitmap::bitmap(uint32_t w, uint32_t h, uint32_t color)
    : w(w), h(h), rgb(new uint32_t[w * h]) {
  for (uint32_t i = 0; i < w * h; i++) rgb[i] = color;
}

bitmap::~bitmap() { delete[] rgb; }

void bitmap::clear(uint32_t color) {
  for (uint32_t i = 0; i < w * h; i++) rgb[i] = color;
}

void bitmap::horiz_line(uint32_t x1, uint32_t x2, uint32_t y, uint32_t color) {
  // TODO: implement this
  for (uint32_t i = y * w + x1; i <= y * w + x2; i++) rgb[i] = color;
}

void bitmap::vert_line(uint32_t y1, uint32_t y2, uint32_t x, uint32_t color) {
  // TODO: implement this
  for (uint32_t i = x + w * y1; i <= w * y2; i += w) {
    rgb[i] = color;
  }
}

void bitmap::fill_rect(uint32_t x0, uint32_t y0, uint32_t w, uint32_t h,
                       uint32_t color) {
  // TODO: implement this
  for (uint32_t i = y0; i <= y0 + h; i++) {
    horiz_line(x0, y0 + w, i, color);
  }
}

void bitmap::rect(uint32_t x0, uint32_t y0, uint32_t w, uint32_t h,
                  uint32_t color) {
  // TODO: implement this
  horiz_line(x0, x0 + w, y0, color);
  horiz_line(x0, x0 + w, y0 + h, color);
  vert_line(y0, y0 + h, x0, color);
  vert_line(y0, y0 + h, x0 + w, color);
}

void bitmap::grid(uint32_t x0, uint32_t y0, uint32_t w, uint32_t h,
                  uint32_t divx, uint32_t divy, uint32_t color) {
  // TODO: implement this
  uint32_t x_prime = w / divx;
  uint32_t y_prime = h / divy;

  for (uint32_t x = x0; x < x0 + w - x_prime; x += x_prime) {
    for (uint32_t y = y0; y <= y0 + h - y_prime; y += y_prime) {
      rect(x, y, x_prime, y_prime, color);
    }
  }
}

std::default_random_engine gen;

// https://stackoverflow.com/questions/22853349/how-to-generate-random-32bit-integers-in-c
void bitmap::random(uint32_t x0, uint32_t y0, uint32_t rw, uint32_t rh) {
  // TODO: implement this
  default_random_engine generator;
  uniform_int_distribution<uint32_t> distribute(0, 0xFFFFFFFF);

  for (uint32_t i = y0; i <= y0 + rh; i++) {
    for (uint32_t j = i * this->w + x0; j <= i * this->w + (x0 + rw); j++) {
      uint32_t genColor = distribute(generator);
      rgb[j] = genColor;
    }
  }
}

void bitmap::circle(uint32_t x, uint32_t y, uint32_t d, uint32_t color) {
  // TODO: implement this
  uint32_t x_prime = d / 2;
  uint32_t y_prime = 0;

  if (d / 2 <= 0) rgb[y * w + x] = color;

  rgb[(y - y_prime) * w + (x + x_prime)] = color;
  rgb[(y + x_prime) * w + (x + y_prime)] = color;
  rgb[(y + y_prime) * w + (x - x_prime)] = color;
  rgb[(y - x_prime) * w + (x - y_prime)] = color;

  int indexValue = 1 - d / 2;
  while (x_prime > y_prime) {
    y_prime++;

    if (indexValue > 0) {
      x_prime--;
      indexValue += 2 * y_prime - 2 * x_prime + 1;
    } else {
      indexValue += 2 * y_prime + 1;
    }

    if (x_prime < y_prime) break;

    rgb[(y + y_prime) * w + (x + x_prime)] = color;
    rgb[(y - y_prime) * w + (x + x_prime)] = color;
    rgb[(y + y_prime) * w + (x - x_prime)] = color;
    rgb[(y - y_prime) * w + (x - x_prime)] = color;

    if (x_prime != y_prime) {
      rgb[(y + x_prime) * w + (x + y_prime)] = color;
      rgb[(y - x_prime) * w + (x + y_prime)] = color;
      rgb[(y + x_prime) * w + (x - y_prime)] = color;
      rgb[(y - x_prime) * w + (x - y_prime)] = color;
    }
  }
}

// https://stackoverflow.com/questions/1201200/fast-algorithm-for-drawing-filled-circles
void bitmap::fill_circle(uint32_t x0, uint32_t y0, uint32_t d, uint32_t color) {
  // TODO: implement this
  for (uint32_t r = d / 2; r > 0; r--) {
    circle(x0, y0, r * 2, color);
  }
}

void bitmap::save(const char filename[]) {
  uint8_t* out;
  size_t s = WebPEncodeRGBA((uint8_t*)rgb, w, h, 4 * w, 100, &out);
  ofstream f(filename, ios::binary);
  f.write((char*)out, s);
  WebPFree(out);
}

// Optional: Bonus points
void bitmap::flood_fill_allcolor(uint32_t x, uint32_t y, uint32_t findcolor,
                                 uint32_t replace_color) {
  // TODO:
}
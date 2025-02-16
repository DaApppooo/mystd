#ifndef H_VARGUI
#define H_VARGUI
#include <cstdint>
#include <cstring>
#include <raylib.h>
#include <raymath.h>

#ifndef VARGUI_MAX_COMPONENTS
#define VARGUI_MAX_COMPONENTS 1024
#endif
#ifndef VARGUI_MAX_DESCR
#define VARGUI_MAX_DESCR 64
#endif

// Scaling factor, you can safely use a custom variable
#ifndef VARGUI_SCALE
#define VARGUI_SCALE (1)
#endif
#ifndef VARGUI_MARGIN
#define VARGUI_MARGIN (10)
#endif

// struct StringBuf
// {
//   char* p;
//   int cap;
// };

template <class T>
struct Variator
{
  T* x;
  T min;
  T max;
  inline float height(float w);
  inline void update(const char* descr, Vector2 topleft, float width, bool& selected);
};

template <>
inline float Variator<int>::height(float w)
{
  return 2.f*(20.f*VARGUI_SCALE);
}
template <>
inline void Variator<int>::update(const char* descr, Vector2 pos, float w, bool& selected)
{
  const Vector2 mpo = GetMousePosition();
  const Rectangle bar_rect = {pos.x+VARGUI_MARGIN, pos.y+20.f*VARGUI_SCALE, w - 2.f*VARGUI_MARGIN, 20.f*VARGUI_SCALE};
  DrawRectangleRec(bar_rect, WHITE);
  const float gui_x = (float(*x)-min)/(max-min);
  const bool hover = CheckCollisionPointRec(mpo, bar_rect);
  DrawRectangleRec(
    {
      bar_rect.x + gui_x*bar_rect.width-VARGUI_MARGIN/2.f,
      bar_rect.y,
      VARGUI_MARGIN,
      bar_rect.height
    },
    hover ? LIGHTGRAY : DARKGRAY
  );
  DrawText(TextFormat("%s: %i", descr, *x), bar_rect.x, pos.y, bar_rect.height, WHITE);
  if (hover && IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
  {
    selected = true;
  }
  if (selected)
  {
    *x = Clamp((mpo.x - bar_rect.x)/bar_rect.width, 0.f, 1.f)*(max-min) + min;
    if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON))
      selected = false;
  }
}
template <>
inline float Variator<float>::height(float w)
{
  return 2.f*(20.f*VARGUI_SCALE);
}
template <>
inline void Variator<float>::update(const char* descr, Vector2 pos, float w, bool& selected)
{
  const Vector2 mpo = GetMousePosition();
  const Rectangle bar_rect = {pos.x+VARGUI_MARGIN, pos.y+20.f*VARGUI_SCALE, w - 2.f*VARGUI_MARGIN, 20.f*VARGUI_SCALE};
  DrawRectangleRec(bar_rect, WHITE);
  const float gui_x = (float(*x)-min)/(max-min);
  const bool hover = CheckCollisionPointRec(mpo, bar_rect);
  DrawRectangleRec(
    {
      bar_rect.x + gui_x*bar_rect.width-VARGUI_MARGIN/2.f,
      bar_rect.y,
      VARGUI_MARGIN,
      bar_rect.height
    },
    hover ? LIGHTGRAY : GRAY
  );
  DrawText(TextFormat("%s: %f", descr, *x), bar_rect.x, pos.y, bar_rect.height, WHITE);
  if (hover && IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
  {
    selected = true;
  }
  if (selected)
  {
    *x = Clamp((mpo.x - bar_rect.x)/bar_rect.width, 0.f, 1.f)*(max-min) + min;
    if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON))
      selected = false;
  }
}
template <>
inline float Variator<Vector2>::height(float w)
{
  return 20.f*VARGUI_SCALE + w-VARGUI_MARGIN*2.f;
}
template <>
inline void Variator<Vector2>::update(const char* descr, Vector2 pos, float w, bool& selected)
{
  const Vector2 mpo = GetMousePosition();
  const Rectangle sq = {pos.x+VARGUI_MARGIN, pos.y+20.f*VARGUI_SCALE, w - 2.f*VARGUI_MARGIN, w - 2.f*VARGUI_MARGIN};
  DrawRectangleRec(sq, BLACK);
  DrawLineV(
    Vector2{sq.x, sq.y}+Vector2{     0.f, sq.height/2.f},
    Vector2{sq.x, sq.y}+Vector2{sq.width, sq.height/2.f},
    DARKGRAY
  );
  DrawLineV(
    Vector2{sq.x, sq.y}+Vector2{sq.width/2.f,       0.f},
    Vector2{sq.x, sq.y}+Vector2{sq.width/2.f, sq.height},
    DARKGRAY
  );
  const Vector2 gui_x = (*x-min)/(max-min);
  const bool hover = CheckCollisionPointRec(mpo, sq);
  DrawCircleV(
    gui_x + Vector2{sq.x, sq.y},
    10.f*VARGUI_SCALE,
    hover ? LIGHTGRAY : WHITE
  );
  DrawText(TextFormat("%s: (%f, %f)", descr, x->x, x->y), sq.x, pos.y, sq.height, WHITE);
  if (hover && IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
  {
    selected = true;
  }
  if (selected)
  {
    *x = Vector2Clamp((mpo - Vector2{sq.x, sq.y})/Vector2{sq.width, sq.height}, {0.f, 0.f}, {1.f, 1.f})*(max-min) + min;
    if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON))
      selected = false;
  }
}

struct FreeFloat
{
  float* x;
  float step;
};

struct IntVariator
{
  int* x;
  int min;
  int max;
};

struct FreeInt
{
  int* x;
  int step;
};

struct ButtonVariator
{
  bool* x;
};

struct CheckBoxVariator
{
  bool* x;
};

template <typename FLAG_T = int32_t>
struct RadioVariator
{
  FLAG_T* flag;
  int count;
};

struct VarGuiComponent
{
  union
  {
    Variator<int> vri;
    Variator<float> vrf;
    Variator<Vector2> vrv2;
  } get;
  char descr[VARGUI_MAX_DESCR];
  enum
  {
    VARIATOR_INT, VARIATOR_FLOAT, VARIATOR_VEC2,
    BUTTON, CHECKBOX,
    ARR_RADIO
  } type;
  float height();
  void update(Vector2 v, float w);
};

#define INCL_STACK() extern VarGuiComponent vgcstack[VARGUI_MAX_DESCR]; \
                     extern int vgcsp; \
                     extern Rectangle vgwin; \
                     extern Vector2 vgwin_off; \
                     extern float vgwin_scroll;
                     


inline void BeginVarGui()
{
  INCL_STACK();
  vgcsp = 0;
}

inline void VarInt(const char* descr, int* i, int min, int max)
{
  INCL_STACK();
  VarGuiComponent vgc;
  vgc.get.vri = {i, min, max};
  vgc.type = VarGuiComponent::VARIATOR_INT;
  strncpy(vgc.descr, descr, VARGUI_MAX_DESCR);
  if (vgcsp < VARGUI_MAX_COMPONENTS)
    vgcstack[vgcsp++] = vgc;
}
inline void VarFloat(const char* descr, float* i, float min, float max)
{
  INCL_STACK();
  VarGuiComponent vgc;
  vgc.get.vrf = {i, min, max};
  vgc.type = VarGuiComponent::VARIATOR_FLOAT;
  strncpy(vgc.descr, descr, VARGUI_MAX_DESCR);
  if (vgcsp < VARGUI_MAX_COMPONENTS)
    vgcstack[vgcsp++] = vgc;
}
inline void VarVec2(const char* descr, Vector2* i, Vector2 min, Vector2 max)
{
  INCL_STACK();
  VarGuiComponent vgc;
  vgc.get.vrv2 = {i, min, max};
  vgc.type = VarGuiComponent::VARIATOR_VEC2;
  strncpy(vgc.descr, descr, VARGUI_MAX_DESCR);
  if (vgcsp < VARGUI_MAX_COMPONENTS)
    vgcstack[vgcsp++] = vgc;
}

inline void EndVarGui(Color tile_bar_color)
{
  INCL_STACK();
  float h = 0.f;
  // TODO: SUPPORT WINDOW MOVEMENT FROM TILEBAR
  DrawRectangleRec(
    {vgwin.x, vgwin.y, vgwin.width, 30.f*VARGUI_SCALE},
    tile_bar_color
  );
  for (int i = 0; i < vgcsp; i++)
  {
    h += vgcstack[i].height();
  }
  Vector2 d = {vgwin.x, vgwin.y + 30.f*VARGUI_SCALE};
  DrawRectangleRec(
    {d.x, d.y, vgwin.width, vgwin.height-30.f*VARGUI_SCALE},
    DARKGRAY
  );
  h = 0.f;
  int i = 0;
  while (h < vgwin_scroll)
  { i++; h += vgcstack[i].height(); }
  for (; i < vgcsp; i++)
  {
    const float step_h = vgcstack[i].height();
    h += step_h;
    if (h-vgwin_scroll > vgwin.height)
      break;
    vgcstack[i].update(d, vgwin.width);
    d.y += step_h;
  }
  if (CheckCollisionPointRec(GetMousePosition(), vgwin))
  {
    vgwin_scroll += GetMouseWheelMove() * 20.f * VARGUI_SCALE;
    vgwin_scroll = Clamp(vgwin_scroll, 0.f, h-vgwin.height);
  }
}

#endif

#if defined(VARGUI_IMPL) || defined(VARGUI_IMPLEMENTATION)
#undef VARGUI_IMPL
#undef VARGUI_IMPLEMENTATION

VarGuiComponent vgcstack[VARGUI_MAX_DESCR];
Rectangle vgwin = {0.f, 0.f, 200.f, 500.f};
Vector2 vgwin_off;
float vgwin_scroll = 0.f;
int vgcsp = 0;

#endif


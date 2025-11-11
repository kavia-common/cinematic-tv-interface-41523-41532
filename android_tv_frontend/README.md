# android_tv_frontend

Android TV-like Home Screen implemented in Flutter with D-pad navigation.

Highlights:
- Top app bar with Search, tabs (Home, TV Shows, Movies, Watchlist, Settings), utilities and avatar
- Featured carousel row with focusable 16:9 cards and right metadata panel
- Recommendations rail with horizontal scroller
- TV D-pad navigation using Shortcuts/Actions and FocusTraversalGroup
- Focus animations (scale, outline glow) and Material 3 styling
- Profile overlay panel with slide-in animation

How to navigate:
- Use arrow keys or a TV remote D-pad to move focus
- Press Enter/Select/Space to activate the focused card or control
- Press back (Android) or click outside to close the profile overlay

Design tokens:
- Colors, typography, and spacing follow the style guide in /assets/style_guide.md
- Layout and component specifics from /assets/home_screen_design_notes.md

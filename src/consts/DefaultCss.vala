/*
 * This file is part of tatam.
 * 
 *     tatam is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU General Public License as published by
 *     the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 * 
 *     tatam is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 * 
 *     You should have received a copy of the GNU General Public License
 *     along with tatam.  If not, see <http://www.gnu.org/licenses/>.
 * 
 * Copyright 2020 Takayuki Tanaka
 */

namespace Tatam {
    public const string DEFAULT_CSS = """
/*
 * This file is part of dplayer.
 * 
 *     dplayer is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU General Public License as published by
 *     the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 * 
 *     dplayer is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 * 
 *     You should have received a copy of the GNU General Public License
 *     along with dplayer.  If not, see <http://www.gnu.org/licenses/>.
 * 
 * Copyright 2018 Takayuki Tanaka
 */

/***********************************************************
 *                  dplayer style sheet                    *
 ***********************************************************/
.playlist_title {
    padding: 6px 0px 2px 0px;
    font-size: 12px;
}

.playlist_album {
    padding: 2px 0px 6px 0px;
    font-size: 11px;
}

.playlist_artist {
    padding: 6px 0px 2px 0px;
    font-size: 9px;
    font-style: italic;
}

.playlist_genre {
    padding: 2px 0px 6px 0px;
    font-size: 9px;
    font-style: italic;
}

.artwork_background {
    background-color: rgba(0, 0, 0, 0.85);
    color: #ffffff;
}

.tooltip {
    color: rgba(252, 252, 252, 1.0);
    font-style: italic;
    padding: 4px;
    /* not working */
    border-radius: 2px;
    box-shadow: none;
}

.tooltip.background {
    box-shadow: inset 0px 1px rgba(0, 0, 0, 0.5);
    background-color: rgba(9, 9, 9, 0.5);
}

.finder_icon {
}

.finder_item_label {
    background-color: rgba(10, 10, 10, 0.5);
    color: rgba(228, 228, 228, 1.0);
}
.finder_mini_icon {
    background-color: rgba(128, 128, 128, 0.0);
}
.finder_button {
}
.while_label {
    background-color: rgba(16, 16, 16, 0.5);
    color: rgba(228, 228, 228, 1.0);
}
""";
}

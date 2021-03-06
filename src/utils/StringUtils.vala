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
 * Copyright 2018 Takayuki Tanaka
 */

using Gdk;

namespace Tatam.StringUtils {
    public Gee.List<string> array_to_list(string[] array) {
        Gee.List<string> list = new Gee.ArrayList<string>();
        foreach (string item in array) {
            list.add(item);
        }
        return list;
    }
}


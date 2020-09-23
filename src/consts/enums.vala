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

    [Flags]
    public enum FileType {
        DIRECTORY,
        DISC,
        FILE,
        MUSIC,
        PARENT,
        UNKNOWN,
        ALL;
        public string get_name() {
            switch (this) {
            case DIRECTORY: return "DIRECTORY";
            case DISC: return "DISC";
            case FILE: return "FILE";
            case MUSIC: return "MUSIC";
            case PARENT: return "PARENT";
            case UNKNOWN: return "UNKNOWN";
            case ALL: default: return "ALL";
            }
        }
    }

    public enum MusicViewIconType {
        STOPPED,
        PAUSED,
        PLAYING
    }

    public enum MenuType {
        BOOKMARK,
        FOLDER,
        FINDER,
        PLAYLIST_HEADER,
        PLAYLIST_NAME,
        CHOOSER,
        CONFIG,
        ABOUT,
        QUIT,
        REMOVE,
        MOVE_UP,
        MOVE_DOWN,
        SEPARATOR
    }

    public enum DnDTarget {
        STRING
    }

    public enum Column {
        TITLE,
        LENGTH,
        ALBUM,
        ARTIST,
        COMPOSER,
        GENRE,
        TRACK,
        DISC,
        DATE,
        COMMENT
    }

    public enum SaveMode {
        OVERWRITE,
        CREATE
    }
    
    public enum PlayPauseButtonState {
        PLAY, PAUSE, FINISHED
    }
        
/* オプション用のデータ型 */
    private const string CONFIG_DIR_VALUE_SHORT = "-d";
    private const string CSS_PATH_VALUE_SHORT = "-c";
    private const string LAST_VISITED_DIR_VALUE_SHORT = "-v";
    private const string LAST_PLAYLIST_NAME_VALUE_SHORT = "-l";
    private const string FINDER_ICON_SIZE_VALUE_SHORT = "-i";
    private const string PLAYLIST_THUMBNAIL_SIZE_VALUE_SHORT = "-p";
    private const string CONTROLLER_IMAGE_SIZE_MIN_VALUE_SHORT = "-n";
    private const string CONTROLLER_IMAGE_SIZE_MAX_VALUE_SHORT = "-x";
    
    private const string CONFIG_DIR_VALUE_LONG = "config-dir";
    private const string CSS_PATH_VALUE_LONG = "css-path";
    private const string LAST_VISITED_DIR_VALUE_LONG = "last-visited-dir";
    private const string LAST_PLAYLIST_NAME_VALUE_LONG = "last-playlist-name";
    private const string FINDER_ICON_SIZE_VALUE_LONG = "finder-icon-size";
    private const string PLAYLIST_THUMBNAIL_SIZE_VALUE_LONG = "playlist-image-size";
    private const string CONTROLLER_IMAGE_SIZE_MIN_VALUE_LONG = "controller-image-size-min";
    private const string CONTROLLER_IMAGE_SIZE_MAX_VALUE_LONG = "controller-image-size-max";

    public enum OptionKey {
        CONFIG_DIR,
        CSS_PATH,
        LAST_VISITED_DIR,
        LAST_PLAYLIST_NAME,
        FINDER_ICON_SIZE,
        PLAYLIST_THUMBNAIL_SIZE,
        CONTROLLER_IMAGE_SIZE_MIN,
        CONTROLLER_IMAGE_SIZE_MAX
        ;

        public static OptionKey[] values() {
            return {
                CONFIG_DIR, CSS_PATH, LAST_VISITED_DIR, LAST_PLAYLIST_NAME,
                FINDER_ICON_SIZE, PLAYLIST_THUMBNAIL_SIZE, CONTROLLER_IMAGE_SIZE_MIN,
                CONTROLLER_IMAGE_SIZE_MAX
            };
        }
        
        public static OptionKey value_of(string key_name) throws Tatam.Error {
            switch (key_name) {
            case CONFIG_DIR_VALUE_SHORT:
            case CONFIG_DIR_VALUE_LONG:
                return CONFIG_DIR;

            case CSS_PATH_VALUE_SHORT:
            case CSS_PATH_VALUE_LONG:
                return CSS_PATH;

            case LAST_VISITED_DIR_VALUE_SHORT:
            case LAST_VISITED_DIR_VALUE_LONG:
                return LAST_VISITED_DIR;

            case LAST_PLAYLIST_NAME_VALUE_SHORT:
            case LAST_PLAYLIST_NAME_VALUE_LONG:
                return LAST_PLAYLIST_NAME;

            case FINDER_ICON_SIZE_VALUE_SHORT:
            case FINDER_ICON_SIZE_VALUE_LONG:
                return FINDER_ICON_SIZE;

            case PLAYLIST_THUMBNAIL_SIZE_VALUE_SHORT:
            case PLAYLIST_THUMBNAIL_SIZE_VALUE_LONG:
                return PLAYLIST_THUMBNAIL_SIZE;

            case CONTROLLER_IMAGE_SIZE_MIN_VALUE_SHORT:
            case CONTROLLER_IMAGE_SIZE_MIN_VALUE_LONG:
                return CONTROLLER_IMAGE_SIZE_MIN;

            case CONTROLLER_IMAGE_SIZE_MAX_VALUE_SHORT:
            case CONTROLLER_IMAGE_SIZE_MAX_VALUE_LONG:
                return CONTROLLER_IMAGE_SIZE_MAX;

            default:
                throw new Tatam.Error.OPTION_KEY_ERROR(Text.ERROR_INVALID_OPTION_KEY);
            }
        }

        public string? get_short_name() {
            switch (this) {
            case CONFIG_DIR: return CONFIG_DIR_VALUE_SHORT;
            case CSS_PATH: return CSS_PATH_VALUE_SHORT;
            case LAST_VISITED_DIR: return LAST_VISITED_DIR_VALUE_SHORT;
            case LAST_PLAYLIST_NAME: return LAST_PLAYLIST_NAME_VALUE_SHORT;
            case FINDER_ICON_SIZE: return FINDER_ICON_SIZE_VALUE_SHORT;
            case PLAYLIST_THUMBNAIL_SIZE: return PLAYLIST_THUMBNAIL_SIZE_VALUE_SHORT;
            case CONTROLLER_IMAGE_SIZE_MIN: return CONTROLLER_IMAGE_SIZE_MIN_VALUE_SHORT;
            case CONTROLLER_IMAGE_SIZE_MAX: return CONTROLLER_IMAGE_SIZE_MAX_VALUE_SHORT;
            default: return "";
            }
        }

        public string get_long_name() {
            switch (this) {
            case CONFIG_DIR: return CONFIG_DIR_VALUE_LONG;
            case CSS_PATH: return CSS_PATH_VALUE_LONG;
            case LAST_VISITED_DIR: return LAST_VISITED_DIR_VALUE_LONG;
            case LAST_PLAYLIST_NAME: return LAST_PLAYLIST_NAME_VALUE_LONG;
            case FINDER_ICON_SIZE: return FINDER_ICON_SIZE_VALUE_LONG;
            case PLAYLIST_THUMBNAIL_SIZE: return PLAYLIST_THUMBNAIL_SIZE_VALUE_LONG;
            case CONTROLLER_IMAGE_SIZE_MIN: return CONTROLLER_IMAGE_SIZE_MIN_VALUE_LONG;
            case CONTROLLER_IMAGE_SIZE_MAX: return CONTROLLER_IMAGE_SIZE_MAX_VALUE_LONG;
            default: return "";
            }
        }
    }
}
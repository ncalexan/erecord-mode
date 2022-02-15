;;; erecord-mode.el --- mode for Mercurial/hg interactive patch recording.  -*- lexical-binding: t; -*-

;; Copyright (C) 2022 Nick Alexander

;; Author: Nick Alexander <ncalexander@gmail.com>
;; Maintainer: Nick Alexander <ncalexander@gmail.com>
;; Version: 0.1
;; URL: http://github.com/ncalexan/erecord-mode
;; xPackage-Requires: ((emacs "24.5") (s "1.8.0") (f "0.16.0"))

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; erecord-mode is an Emacs mode for Mercurial/hg interactive patch recording.

;;; Code:

(require 'dash)
(require 'eieio)
(require 'f)
(require 'magit-section)
(require 's)

(defun erecord-test-function (a b)
  (+ a b))

(provide 'erecord-mode)

;;; erecord-mode.el ends here

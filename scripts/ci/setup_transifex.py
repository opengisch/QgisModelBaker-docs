# -*- coding: utf-8 -*-
"""
/***************************************************************************
This scripts generates a .tx/config file for transifex translation based
on .pot files found in the folder i18n/pot.
                              -------------------
        begin                : 2017-09-21
        git sha              : :%H$
        copyright            : (C) 2017 by OPENGIS.ch
        email                : info@opengis.ch
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
import glob
import os.path
dir = 'i18n/pot/'


def print_file_section(filename):
    with open('.tx/config', 'a') as tx_file:
        tx_file.write('\n')
        tx_file.write('[QgisModelBaker-documentation.{}]\n'.format(filename))
        tx_file.write('file_filter = i18n/<lang>/{}.po\n'.format(filename))
        tx_file.write('source_file = i18n/pot/{}.pot\n'.format(filename))
        tx_file.write('source_lang = en\n')
        tx_file.write('type = PO\n')


def print_header():
    with open('.tx/config', 'w') as tx_file:
        tx_file.write('[main]\n')
        tx_file.write('host = https://www.transifex.com\n')

if __name__ == "__main__":
    print_header()
    for f in glob.iglob('i18n/pot/*.pot'):
        path, fullname = os.path.split(f)
        filename, ext = os.path.splitext(fullname)
        print_file_section(filename)

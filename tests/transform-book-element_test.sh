# transform-library-element_test.sh -- tests the library element transformation
#
# Copyright 2016 Samuel Sirois (sds) <samuel@sirois.info>
#
# This file is part of lab-tdd-xslt.
#
# lab-tdd-xslt is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# lab-tdd-xslt is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with lab-tdd-xslt.  If not, see <http://www.gnu.org/licenses/>.

testThatABookElementIsTransformAsAListItem()
{
  xmldoc="$xmldocHeader<book />"
  expected="<li>"
  actual=`echo ${xmldoc} | ${xsltprocCmd}`

  assertEquals ${expected} ${actual}
}

oneTimeSetUp() {
  xsltprocCmd='xsltproc src/xslt/library.xslt -'
  xmldocHeader='<?xml version="1.0"?>'
}


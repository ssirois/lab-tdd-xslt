<?xml version= "1.0" ?>
<!--
library.xslt — declares transformation rules for a library

Copyright 2016 Samuel Sirois (sds) <samuel@sirois.info>

This file is part of lab-tdd-xslt.

lab-tdd-xslt is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

lab-tdd-xslt is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with lab-tdd-xslt.  If not, see <http://www.gnu.org/licenses/>.
-->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="no" />

  <xsl:template match="/library">
    <ul>
      <xsl:apply-templates select="book" />
    </ul>
  </xsl:template>

  <xsl:template match="book">
    <li></li>
  </xsl:template>
</xsl:stylesheet>

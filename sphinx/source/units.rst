Units
=====

Units are official state or state-sanctioned organizations responsible for the internal or external security for a country. They include police, army, navy, air force and other security forces, as well as those civilian institutions linked to security forces through the chain of command or other linkages. Units refer to any part of the hierarchy of a security force, ranging from a national defense ministry to a police post in a small town. Units can also be groupings of other units, including joint operations, task forces or peacekeeping missions. 

Documented in this chapter are a range of different pieces of data about units, including:

-  their existence and identity;
-  their position in the hierarchy of a security force;
-  locations of physical infrastructure like posts, bases and camps;
-  their areas of operations; and,
-  memberships in joint operations or international peacekeeping missions.

Unit: Unique Identifier
-----------------------

**Description**

A unique 32 chracter code assigned to each unit in the dataset. 

**Type of field**

Text and numbers

**Example of use**

``a407be6a-28e6-4237-b4e9-307f27b1202e``

**Spreadsheet column name**

``unit:id:admin``

**Shortcode**

``u_id_a``

**Sources**

No

**Confidence**

No

**Guidance on use**

This value is a Universally Unique Indentifier (UUID) generated using a computer program. UUIDs can be created easily using either installable or online tools, for example:

- Linux and OSX users: `uuidgen` command line tool.
- On the web: `UUID Generator<https://www.uuidgenerator.net/version>`_.

The field is administrative, providing a reliable way to differentiate between different units. In earlier versions, Security Force Monitor used ``unit:name`` to do this role but this provided inefficient as the dataset grew.

When a new unit is created directly in WhoWasInCommand, the platform automatically creates a UUID for that unit and stores it in this field. If a new unit is created in a spreadsheet, the Staff Researcher must generate a unique identifying number for that unit and copy it into the field ``unit:id:admin`` for every row associated with that specific unit. This manual, copy-and-paste step is a potential source of error and the Staff Researcher must be careful not to re-use a UUID.

Bulk updates made to WhoWasInCommand.com by spreadsheet import are based on the values in this field. For example, changes made in the row ``a407be6a-28e6-4237-b4e9-307f27b1202e`` in the spreadsheet will be applied to the unit with that UUID in WhoWasInCommand. 

Unit: Research Owner
--------------------

**Description**

Initials of Staff Reseacher who first created the unit.

**Type of field**

Text

**Example of use**

``TL``, ``TW``, ``MM``

**Spreadsheet column name**

``unit:owner:admin``

**Shortcode**

``u_own_a``

**Sources**

No

**Confidence**

No

**Guidance on use**

This field is administrative and only used where data are created using a spreadsheets. It is a simple measure to help researchers keep track of records they have created. These data are not imported into WhoWasInCommand. Instead, WhoWasInCommand keeps a record of the changes (edits, new records, deletions) by the name of the system user who made them.


Unit: Research Status
---------------------

**Description**

The place of a row of data in the research workflow.

**Type of field**

Number range from 0 to 3

**Example of use**

``1``

**Spreadsheet column name**

``unit:status:admin``

**Shortcode**

``u_sta_a``

**Sources**

No

**Confidence**

No

**Guidance on use**

This administrative field is only used in spreadsheets. Staff Researchers use this field to indicate where a row of data stands in the research workflow between the first cut of a row of data, review by other researchers, and final readiness for publication. Values in this field are taken from the below controlled list:


- `0`: First commit. This row of data has just been added and needs review.
- `1`: Fixes needed. A reviewer has made comments that need to be addressed, which will be recorded in the ``unit:comment:admin`` field.
- `2`: Fixes made. The owner of this data has addressed the reviewer's comments.
- `3`: Clean. A final check has been made by a reviewer, and this row of data can be published.

Data created and managed in WhoWasInCommand does not use this mechanism. At the time of writing, a simple review system is being implemeneted in WhoWasInCommand.

Unit: Research Comments
-----------------------

**Description**

Observations specific to the process of reviewing data in this row, including fixes, refinements and other suggestions.

**Type of field**

Text

**Example of use**

``Parent unit missing``, ``Geography needs attention``, ``Possible duplicate - merge?``

**Spreadsheet column name**

``unit:comments:admin``

**Shortcode**

``u_com_a``

**Sources**

No

**Confidence**

No

**Guidance on use**

This is an adminstrative field specific to data created in spreadsheets. Staff Researchers use it to pass on feedback about the data in the row. This may included changes needs to specific fields, references to sources that the owner of the row might look at, and other observations that can improve the quality of the data. Data in this field are not intended for publication. 


Unit: Name
----------

**Description**

Name of the unit.

**Type of field**

Text and numbers

**Example of use**

``3 Armoured Division``, ``3 Compañía de Infantería No Encuadrada``, ``7 Military Operations Command``

**Spreadsheet column name**

``unit:name``

**Shortcode**

``u_n``

**Sources**

Yes (``unit:name:source``, ``u_n_s``)

**Confidence**

Yes (``unit:name:confidence``, ``u_n_c``)

**Guidance on use**

As different sources will spell a unit's name in different ways the Security Force Monitor works to create a single canonical version of a unit's name based on sources and standardized to match the overall structure of and reporting about the security forces:

    Example: ``Police Divisions`` are a class of police units in Nigeria. There are over 1000 units of this type nationwide. However, each individual ``Police Division`` may not have a citation for their formal name such as Lagos Police Division, but only have a citation (or numerous citations) for the less formal ``Lagos Division``. The Monitor would list the name of the unit as ``Lagos Police Division`` with a note about the methodology behind that choice. The less formal ``Lagos Division`` name would be entered in the ``Unit: Aliases`` field (documented below).

    Example: Army units of a country may follow a naming convention of a number and then name of unit: e.g. ``3 Battalion`` or ``25 Brigade``. There may be a unit of which we only have citations for a variation on that: e.g. ``Fourth Battalion``. In this case, the Monitor would list the name of the unit as ``4 Battalion`` with a note about the methodology behind that choice. The ``Fourth Battalion`` name variant would be entered in the ``Aliases or alternative spellings`` field

Additionally, wherever possible, we will choose the most complete and complex version of a unit’s name that can be evidenced by a source:

    Example: ``3 Armoured Division`` would be the entry, rather than the more informal ``3 Division`` (which may have more citations).

The Monitor does not use ordinal indicators like ``1st`` or ``3rd`` in the name of an Unit. Instead these will be listed in the ``Unit: Other Names`` field (see below).

The Monitor uses the name in the official (local) language of the country where appropriate and/or possible.

    Example: A unit in the Mexican Army would be called by its name in Spanish (``10 Regimiento de Caballería Motorizado``), rather than the English translation ( ``10 Motorized Cavalry Regiment``).

In an effort to standardize names across all countries, the Monitor generally uses Arabic numerals in the ``Unit: Name`` field. Where warranted by sources the Monitor will use Roman numerals like ``V`` or ``XI`` instead of ``5`` or ``11`` respectively.

In cases where multiple units have the same name the Monitor will distinguish them by adding unique identifying text based on the unit's site or parent.

    Example: There are multiple "Central Police Station" formations across Nigeria, some based in the same state. To better distinguish these are separate, distinct units the Monitor added information on where the units were located to the name field for instance ``Central Police Station (Awka, Anambra State).``\ In Myanmar there have been different units through time both the name Central Regional Military Command. To distinguish them the Monitor added information on when the unit came into existence to the name: ``Central Regional Military Command (post 199)``.

Unit: Other Names
-----------------

**Description**

Other names for a unit, including aliases, alternative spellings and abbreviations.

**Type of field**

Text and numbers

**Example of use**

If ``3 Armoured Division`` is used as the canonical ``Unit: Name`` of a unit, entries in the ``Unit: Other Names`` field may include ``3 Div`` and ``Three Division``.

**Spreadsheet column name**

``unit:other_names``

**Shortcode**

``u_on``

**Sources**

Yes (``unit:other_names:source``, ``u_on_s``)

**Confidence**

Yes (``unit:other_names:confidence``, ``u_on_c``)

**Guidance on use**

Different sources will spell a unit's name in different ways. We choose and record a canonical version of a unit's name in the ``Unit: Name`` field. All other spellings that we have found are treated as aliases and stored in this field.

Although we do not use ordinal indicators like ``2nd`` or ``10/o`` in the canonical name we choose for a unit, where a source uses an Ordinal we record it as an alias.

    Example: We find a version of the unit name ``3 Armoured Division`` that has an Ordinal indicator: ``10/o. Regimiento de Caballería Motorizado.`` We would record this in the ``Unit: Other Names`` field.

Unit: Country
-------------

**Description**

ISO 3166 two letter code for the country in which a unit originates.

**Type of field**

Two letter country code

**Example of use**

``mx``, ``ug``, ``ng``

**Spreadsheet column name**

``unit:country``

**Shortcode**

``u_c``

**Sources**

Yes (``unit:country:sources``, ``u_c_s``)

**Confidence**

Yes (``unit:country:confidence``, ``u_c_c``)

**Guidance on use**

The ``Unit: Country`` field identifies the country this unit comes from. All entries in this field are two letter country codes taken from `ISO 3166<https://www.iso.org/obp/ui/#search>`__.

    For example, a unit based in Nigeria would have the code ``ng`` and a unit based in Brazil would have the code ``br``

Unit: Classification
--------------------

**Description**

Branch of the security services that the unit a part of or general descriptor for the unit.

**Type of field**

Text and numbers

**Example of use**

``Army``, ``Ejército``, ``Police``, ``Military``, ``Military Police``, ``Joint Operation``

**Spreadsheet column name**

``unit:classification``

**Shortcode**

``u_cl``

**Sources**

Yes (``unit:classification:sources``, ``u_cl_s``)

**Confidence**

Yes (``unit:classification:confidence``, ``u_cl_c``)

**Guidance on use**

We use classifications to describe the basic nature of a specific unit and to assist investigations of potential linkages between reports of human rights abuses and the Security Force Monitor's dataset. As alleged perpetrators are usually identified in general terms of "soldiers" and "police" this field is important as a first step to understand potential linkages between units, persons and incidents. ``Unit: Classification`` values are useful supplements to ``Unit: Related Unit`` and ``Unit: Membership`` data we use to connect different units together.

The ``Unit: Classification`` field will contain a mix of standard terms and country-specific terms used to describe security force branches. In choosing terms to include in the ``Unit: Classification`` field we try to include terms that are used by country experts as well as those that are commons terms. We also try to be economical and create as few, distinct terms as possible.

    Example: a standard term we would apply to army units is ``Army``. The equivalent in Mexico would be ``Ejécito``. We would capture both terms in the ``Unit: Classification`` field.

Units may have more than one classification, usually this will be when a unit can have "generic" and "specific" classifications.

    Example: Units which are part of the army of a country may be coded as having a classification of ``Army`` as well as a classification of ``Military``, whereas units which are part of the navy of a country would have classifications of of ``Navy`` and ``Military``. For both the army and navy unit their respective classifications are correct, the army and the navy are part of the military. Critically, this enables the Monitor or users of the Monitor's data to properly analyze allegations against "soldiers" and "members of the army" in the country. In the case of "soldiers" this analysis should include every unit with the classification of ``Military`` while if there is greater specificity of "members of the army" would mean excluding any unit with the classification of ``Navy`` and focusing only on those units with a classification of ``Army.``

Unit: First Cited Date
----------------------

**Description**

The earliest date that a source shows a unit exists, either through direct reference in the source or by the date of its publication.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``

**Spreadsheet column name**

``unit:first_cited_date``

**Shortcode**

``u_fcd``

**Sources**

Yes (``unit:first_cited_date:source``, ``u_fcd_s``)

**Confidence**

Yes (``unit:first_cited_date:confidence``, ``u_fcd_c``)

**Guidance on use**

Along with the fields ``Unit: First Cited Date is also Unit's Start Date``, ``Unit: Last Cited Date`` and ``Unit: Last Cited Date is Open-Ended`` the field ``Unit: First Cited Date`` provides data about the time period we can evidence a unit has existed.

The ``Unit: First Cited Date`` field contains a date that is either:

-  The earliest date found in a source that specifically references a unit; or,
-  The earliest date of publication of sources that make reference to a unit.

    For example, if three sources published on 1 January 2012, 1 February 2012 and 1 March 2012 all refer to 1 Motorized Brigade, we will use 1 January 2012 as the ``Unit: First Cited Date``. If the source published on 1 March 2012 refers to activity of 1 Motorized Brigade that occurred on 30 June 2011, we will use 30 June 2011 as the ``Unit: First Cited Date``.

In keeping with all date fields we include in this dataset, where our research can only find a year or a year and a month, this can be included in ``Unit: First Cited Date`` .

This field is clarified by the field ``Unit: First Cited Date is also Unit's Start Date`` which indicates whether the date included here is the actual date on which a unit was founded.

Unit: First Cited Date is also Unit's Start Date
------------------------------------------------

**Description**

Indicates whether the value in ``Unit: Date first cited`` is the actual date a unit was founded.

**Type of field**

Boolean

**Example of use**

``Y``, ``N``

**Spreadsheet column name**

``unit:first_cited_date_start``

**Shortcode**

``u_fcds``

**Sources**

Yes. Inherits from ``Unit: First Cited Date`` (``unit:first_cited_date:source``, ``u_fcd_s``).

**Confidence**

Yes. Inherits from ``Unit:First Cited Date`` (``unit:first_cited_date:confidence``, ``u_cfd_c``).

**Guidance on use**

This is a clarifying field for ``Unit: First Cited Date``:

- ``Y``: used where a source references a unit and specifies the date that unit was created
- ``N``: used in all other cases, indicating that the date is not a start date but the date of first citation.

Unit: Last Cited Date
---------------------

**Description**

The most recent date for sourcing the unit's existence, either through direct reference in the source or by the date of its publication.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2013``, ``2013-12``, ``2013-12-28``

**Spreadsheet column name**

``unit:last_cited_date``

**Shortcode**

``u_lcd``

**Sources**

Yes (``unit:last_cited_date:sources``, ``u_lcd_s``)

**Confidence**

Yes (``unit:last_cited_date:confidence``, ``u_lcd_c``)

**Guidance on use**

Along with the fields ``Unit: First Cited Date``, ``Unit: First Cited Date is also Unit's Start Date`` and ``Unit: Last Cited Date is Open-Ended`` the field ``Unit: Last Cited Date`` provides data on the time period we can say a unit has existed.

The ``Unit: Last Cited Date`` field contains a date that is either:

- The latest date found in a source that specifically references a unit; or,
- The latest date of publication of sources that make reference to a unit.

    For example, if three sources published on 1 January 2012, 1 February 2012 and 1 March 2012 all refer to 1 Motorized Brigade, we will use 1 March 2012 as the ``Unit: Last Cited Date``. If the source published on 1 March 2012 refers to activity of 1 Motorized Brigade that occurred on 15 February 2012, we will use 15 February 2012 as the value in ``Unit: Last Cited Date``.

In keeping with all date fields we include in this dataset, where our research can only find a year or a year and a month, this can be included in ``Unit: Last Cited Date``.

This field is clarified by ``Unit: Open-ended?``, which indicates whether the date in ``Unit: Date last cited`` is the date a unit was disbanded.

Unit: Last Cited Date is Open-Ended
-----------------------------------

**Description**

Indicates whether the value in ``Unit: Last Cited Date`` the actual date on which a unit was disbanded or not.

**Type of field**

Single choice

**Example of use**

``Y``, ``N``, ``E``

**Spreadsheet column name**

``unit:last_cited_date_open``

**Shortcode**

``u_lcdo``

**Sources**

Yes. Inherits from ``Unit: Last Cited Date`` (``unit:last_cited_date:source``, ``u_lcd_s``)

**Confidence**

Yes. Inherits from ``Unit: Last Cited Date`` (``unit:last_cited_date:confidence``, ``u_lcd_c``)

**Guidance on use**

We use this field to clarify the meaning of the date entered in ``Unit: Last Cited Date``. Depending on information availalbe from sources, one of the below values should be chosen:

- ``E`` indicates the exact date this unit was disbanded, or ceases to exist.
- ``Y`` indicates that we assume this unit continues to exist.
- ``N`` indicates we do not assume that this unit continues to exist, but we do not have an exact end date.

Unit: Related Unit
------------------

**Description**

The immediate superior unit in the overall hierarchy of security force.

**Type of field**

Text and numbers

**Example of use**

``301 Artillery Regiment``

**Spreadsheet column name**

``unit:related_unit``

**Shortcode**

``u_rc``

**Sources**

Yes (``unit:related_unit:source``, ``u_rc_s``)

**Confidence**

Yes (``unit:related_unit:confidence``, ``u_rc_c``)

**Guidance on use**

``Unit: Related Unit`` describes a hierarchical, time-bound relationship between two units that are part of the same branch of a security force. The parent is “above” or distinct and separate from the unit in some way. Over time, a unit may have different parents.

    Example: In Nigeria the ``112 Task Force Battalion`` had the parent of a parent of ``7 Division Garrison`` between 12 November 2015 and 24 March 2016. The ``112 Task Force Battalion`` was then under the ``22 Task Force Brigade`` from 14 March 2017 to 26 October 2017.

Units can also have multiple parent relationships at the same time. For example, sources could indicate a unit has a formal legal parent unit while at the same time a new security body established by decree can also directly order the unit to carry out operations, establishing a second parent relationship.

Relationships between units described with ``Unit: Related Unit`` are different from ``Unit: Membership``. Often when there is an "operation" or "joint task force", it may not have have personnel of its own. Rather, personnel from a range of different units are assigned to it. Generally, these types of arrangements don’t put the operation “above” the unit in the unital chart. We outline these types of relationships using the field ``Unit: Membership``, which is documented below.

Unit: Type of Relationship
--------------------------

**Description**

**Type of field**

**Example of use**

``Parent``, ``Child``

**Spreadheet column name**

**Shortcode**

**Sources**

**Confidence**

**Guidance on use**




Parent relationship: Classification
-----------------------------------

**Description**

Type of relationships that exists between two units.

**Type of field**

Controlled vocabulary, single choice

**Example of use**

``Command, Administrative, Informal``

**Guidance on use**

Units have a ``Command`` relationship when the parent unit can order the unit to perform some operational activity. These cover both *de jure* and *de facto* relationships between units.

``Informal`` relationships occur when there is a relationship outside of the legal or formal structure of security forces and where the exact nature of the relationship is unclear.

    Example: Lagos state in Nigeria has a security council which is a meeting of the governor, and the top commanders of police and military units in the state. The security council should be considered its own unit. By law a governor of a state is not in the chain of command for the military or police forces, but the security council membership establishes a relationship between the units and meetings often result in new approaches to security being taken, such as different deployments of police. In this case, we could make the determination that an informal relationship exists between the security council and the police and military units.

``Administrative`` relationships exist where a formal, non-command relationship exists between units, or where an administrative description is more accurate of the relationship between two units.

    Example: By law the Ministry of Defence in Nigeria provides administrative support to the Nigerian Army, establishing a relationship we could classify as ``Administrative``. The Standards Department of an Army Headquarters might be under the control of the Army Headquarters, meaning the Army Headquarters could order the Department to take some sort of action. This technically means the Department is under the “command” of the Headquarters, but the Monitor would describe this relationship as ``Administrative`` because the Department is not in the field conducting operations, it's an administrative organ of the Army Headquarters.

Parent relationship: Date first cited
-------------------------------------

**Description**

The earliest date that a source shows a parent unit relationship exists, either through direct reference in the source or by the date of its publication.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``

**Guidance on use**

Along with the fields ``Parent relationship: Start date?``, ``Parent relationship: Sate last cited`` and ``Parent relationship: Open-ended?`` the field ``Parent unit: Date first cited`` provides data on the time period we can say one unit is the parent of another .

The ``Parent unit: Date first cited`` field contains a date that is either:

-  The earliest date found in a source that specifically references a parent relationship; or,
-  The earliest date of publication of sources that make reference to a parent relationship.

    For example, if three sources published on 1 January 2012, 1 February 2012 and 1 March 2012 all say that 3 Armoured Division became the parent of 1 Motorized Brigade, we will enter 1 January 2012 in ``Parent relationship: date first cited``. If the source published on 1 March 2012 says that 3 Armoured Division became the parent of 1 Motorized Brigade on 30 June 2011, we will use 30 June 2011 as the ``Parent relationship: date first cited``.

In keeping with all date fields we include in this dataset, where our research can only find a year or a year and a month, this can be included ``Parent relationship: Date first cited`` .

This field is clarified by the field ``Parent relationship: Start date?`` which indicates whether the date included here is the actual date on which a unit became the parent of another.

Parent relationship: start date?
--------------------------------

**Description**

Is the value in ``Parent relationship: Date first cited`` the actual date on which a unit became the parent of another, or the earliest date a source has referred to the relationship?

**Type of field**

Boolean (Yes, No)

**Example of use**

``Y``, ``N``

**Guidance on use**

This is a clarifying field for ``Parent relationship: Date first cited``. Where a source references the parent relationship and specifies the date that the relationship began we will enter ``Y`` . In all other cases we will enter a value of ``N`` to indicate that the date is not a start date, but the date of first citation.

Parent unit: date last cited
------------------------------------

**Description**

The latest date that a source shows a parent unit relationship exists, either through direct reference in the source or by the date of its publication.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``

**Guidance on use**

Along with the fields ``Parent relationship: Date first cited``, ``Parent relationship: Start date?`` and ``Parent relationship: Open-ended?`` the field ``Parent unit: Date last cited`` provides data on the time period we can evidence that one unit is the parent of another.

The ``Parent unit: Date last cited`` field contains a date that is either:

-  The latest date found in a source that specifically references a parent relationship; or,
-  The latest date of publication of sources that make reference to a parent relationship.

    Example: Three sources published on 1 January 2012, 1 February 2012 and 1 March 2012 all state that the 1 Motorized Brigade is under the 3 Armoured Division (which evidences a parent relationship), we will enter 1 March 2012 in ``Parent relationship: Date last cited``.

    Example: A source published on 23 July 2017 describes actions undertaken by the 1 Motorized Brigade is under the 3 Armoured Division during riots in 2009, and another source published on 8 June 2008 states that the 1 Motorized Brigade is under the 3 Armoured Division, we would enter 2009 in ``Parent relationship: Date last cited``.

In keeping with all date fields we include in this dataset, where our research can only find a year or a year and a month, this can be included ``Parent relationship: Date last cited`` .

    Example: A source published on 23 July 2017 describes actions undertaken by the 1 Motorized Brigade is under the 3 Armoured Division during riots in 2009, and another source published on 8 June 2008 states that the 1 Motorized Brigade is under the 3 Armoured Division, we would enter 2009 in ``Parent relationship: Date last cited``.

This field is clarified by the field ``Parent relationship: Open-ended?`` which indicates whether the date included here is the actual date on which a unit stopped being the parent of another.

Parent relationship: Open-ended?
--------------------------------

**Description**

Is the value in ``Parent relationship: Date last cited`` the actual date on which the parent relationship ended (E), or can we assume this relationship continues to exist after this date (Y), or can we not assume the relationship continues to exist after this date, but the exact end point is unknown (N)?

**Type of field**

Single choice (Y, N, E)

**Example of use**

``Y``, ``N``, ``E``

**Guidance on use**

We use this field to clarify the meaning of the date entered in ``Parent relationship: Date last cited``. One of the below values should be chosen:

-  ``E`` indicates the exact date one unit stopped being the parent of another.
-  ``Y`` indicates that we assume this parent relationship continues to exist.
-  ``N`` indicates we do not assume that this parent relationship continues to exist, but we do not have an exact end date.

Site: Base
----------

**Description**

A base is a distinctively named building or complex - like a barracks or camp - where the unit is located.

**Type of field**

Text and numbers

**Example of use**

``Leopard Base , Giwa Barracks , Bonny Camp``

**Guidance on use**

The ``Base`` field adds detail about a site. This field is used to record data about units that are located in a distinctively-named building or complex.

    For example, ``3 Battalion`` in Nigeria is cited as being based in the ``Lubanga Barracks`` in ``Enugu, Enugu State, Nigeria``.

This field should not be used for anything that matches the name or alias of a unit. For example, ``North Sector Police Station`` should not be put in this field if the name of the unit is ``North Sector Police Station``.

Site: Exact Location (Longitude or OSM object Name)
---------------------------------------------------

**Description**

The longitude or OSM object name of the most precise location of a site associated with this unit.

**Type of field**

First value of a latitude/longitude pair (using `EPSG:3857 <http://spatialreference.org/ref/epsg/wgs-84/>`__), or an OSM object Name.

**Example of use**

| If used to record an OSM Node Name: ``Masr Al-Gedida``
| If used to record a latitude: ``31.3280332``

**Guidance on use**

We identify ``sites`` with a number of different levels of geographical precision.

``Site: Exact Location (Longitude or OSM Object Name)`` is the first of a pair of values with ``Site: Exact Location (Latitude or OSM Object ID)``. It is used to record the most precise location of a site associated with a unit, whether this is an object (node, way or relation) on OpenStreetMap or a pair of geographical coordinates.

-  Where an object for the exact site is present on OpenStreetMap we will enter its name in this field.
-  Where no OSM object exists for the exact site a pair of coordinates will be used, the latitude value recorded in this field.

Site: Exact Location (Latitude or OSM object ID)
------------------------------------------------

**Description**

The latitude or OSM object ID number of the most precise location of a site associated with this unit.

**Type of field**

Second value of a longitude/latitude pair (using `EPSG:3857 <http://spatialreference.org/ref/epsg/wgs-84/>`__), or an OSM object ID number.

**Example of use**

| If used to record an OSM object ID number: ``452377264``
| If used to record a Longitude: ``30.09716``

**Guidance on use**

We identify ``sites`` with a number of different levels of geographical precision.

``Site: Exact Location (Latitude or OSM Object ID)`` is the second of a pair of values with ``Site: Exact Location (Longitude or OSM Object Name)``. It is used to record the most precise location of a site associated with a unit, whether this is an object (node, way or relation) on OpenStreetMap or a pair of geographical coordinates.

-  Where an object for the exact site is present on OpenStreetMap we will enter its ID number in this field.
-  Where no OSM object exists for the exact site a pair of coordinates will be used, the latitude value recorded in this field.

Site: Settlement (OSM object Name)
----------------------------------

**Description**

The city, town or village in which a unit site is based.

**Type of field**

Text, OSM object name, first in a pair of values

**Example of use**

``Tampico``, ``Francisco Escarcega``, ``Abu al Matamir``

**Guidance on use**

We identify ``sites`` with a number of different levels of geographical precision. In ``Site: Settlement (OSM Object Name)`` we record the name of the OSM object (node, way or relation) that identifies a settlement in which there is a unit site. It could be a city, town or village or other OSM object that denotes a settlement.

Site: Settlement (OSM object ID)
--------------------------------

**Description**

The city, town or village in which a unit site is based.

**Type of field**

Number, OSM object ID number, second in a pair of values

**Example of use**

``273584290``,\ ``286989920``,\ ``769127625``

**Guidance on use**

We identify ``sites`` with a number of different levels of geographical precision. In ``Site: Settlement (OSM Object ID)`` field we record the name of the OSM object (node, way or relation) ID number that identifies a settlement in which there is a unit site. It could be a city, town or village or other OSM object that denotes a settlement.

Site: Top Administrative Area (OSM object Name)
-----------------------------------------------

**Description**

The OSM name of the largest, generally used administrative area of a country (usually admin level 4).

**Type of field**

Text, OSM object name, first in a pair of values

**Example of use**

``Michoacán, Borno``

**Guidance on use**

We identify ``sites`` with a number of different levels of geographical precision. In ``Site: Top Administrative Area (OSM Object Name)`` we record the text name of highest level subnational boundary for the country in which the site is located, `as found in in OpenStreetMap <http://wiki.openstreetmap.org/wiki/Tag:boundary%3Dadministrative#Super-national_administrations>`__. Generally, these are `relations <https://wiki.openstreetmap.org/wiki/Relation>`__ in the OSM dataset tagged as administrative level 4.

    Example: Mexico has both *municipios* (administrative level 6 in OSM) and states (administrative level 4). For a ``site`` based in Mexico, we would record in ``Site: Top Administrative Area (OSM Name)`` the name of the administrative level 4 object or the state.

Site: Top Administrative Area (OSM object ID number)
----------------------------------------------------

**Description**

The OSM ID of the largest, generally used administrative area of a country (usually admin level 4).

**Type of field**

Number, OSM relation ID number, second in a pair of values

**Example of use**

``2340636``

**Guidance on use**

We identify ``sites`` with a number of different levels of geographical precision. In ``Site: Top Administrative Area (OSM Object ID number)`` we record OSM object ID number of the highest level subnational boundary for the country in which the site is located, `as found in in OpenStreetMap <http://wiki.openstreetmap.org/wiki/Tag:boundary%3Dadministrative#Super-national_administrations>`__. Generally, these are `relations <https://wiki.openstreetmap.org/wiki/Relation>`__ in the OSM dataset tagged as administrative e level 4.

    Example: Mexico has both *municipios* (administrative level 6 in OSM) and states (administrative level 4). For a ``site`` based in Mexico, we would record in ``Site: Top Administrative Area (OSM Name)`` the name of the administrative level 4 object or the state.

Site: Country
-------------

**Description**

ISO 3166 code for the country in which the unit's site is located.

**Type of field**

Two letter country code

**Example of use**

``mx``, ``ug``, ``ng``

**Guidance on use**

We identify ``sites`` with a number of different levels of geographical precision.The ``Site: Country`` field identifies the country in which a unit site is located. All entries in this field are two letter country codes taken from `ISO 3166 which can be searched here <https://www.iso.org/obp/ui/#search>`__.

    For example, a unit site located in Nigeria would have the code ``ng`` and a unit site located in Brazil would have the code ``br``.

Site: Date of first citation
----------------------------

**Description**

This field is for the earliest citation for the location of a site, either through direct reference in the source or by the date of its publication.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``

**Guidance on use**

Along with the fields ``Site: Founding date?``, ``Site: Date last cited`` and ``Site: Open-ended?`` the field ``Site: Date first cited`` provides data on the time period for a site's location.

The ``Site: Date first cited`` field contains a date that is either:

-  The earliest date found in any source that references the values contained in the pairs of fields that record ``Site: Settlement``, or failing that, ``Site: Top Administrative area``.
-  The earliest date of publication of any source that references the values contained in the pairs of fields that record ``Site: Settlement``, or failing that, ``Site: Top Administrative area``.

In keeping with all date fields we include in this dataset, where our research can only find a year or a year and a month, this can be included in ``Site: Date first cited``.

This field is clarified by the field ``Site: Founding date?`` which indicates whether the date included here is the actual date on which a unit site was founded.

Site: Founding date?
--------------------

**Description**

Is the value in ``Site: Date first cited`` the actual date on which a unit site was founded (Y), or the earliest date a source has referred to a unit site (N)?

**Type of field**

Boolean (Yes, No)

**Example of use**

``Y``, ``N``

**Guidance on use**

This is a clarifying field for ``Site: Date first cited``. Where a source references a unit site and specifies the date that unit site was founded we will enter ``Y`` . In all other cases we will enter a value of ``N`` to indicate that the date is not a start date, but the date of first citation.

Site: Date last cited
---------------------

**Description**

This field is for the latest citation for the location of a site, either through direct reference in the source or by the date of its publication.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``

**Guidance on use**

Along with the fields ``Site: Date first cited``, ``Site: Founding date?`` and ``Site is Open-ended?`` the field ``Site: Date last cited`` provides data on the time period for a site's location.

The ``Site: Date last cited`` field contains a date that is either:

-  The latest date found in any source that references the values contained in the pairs of fields that record ``Site: Settlement``, or failing that, ``Site: Top Administrative area``.
-  The latest date of publication of any source that references the values contained in the pairs of fields that record ``Site: Settlement``, or failing that, ``Site: Top Administrative area``.

In keeping with all date fields we include in this dataset, where our research can only find a year or a year and a month, this can be included in ``Site: Date last cited``.

This field is clarified by the field ``Site: Open-ended?`` which indicates whether the date included here is the actual date on which a unit was no longer located at this site.

Site: Open-ended?
-----------------

**Description**

Indicates whether the value in ``Site: Date last cited`` is the actual date on which a unit site was disbanded, the latest date a source has referred to a unit site, and whether can we assume this unit site continues to exist.

**Type of field**

Single choice (Y, N, E)

**Example of use**

``Y``, ``N``, ``E``

**Guidance on use**

We use this field to clarify the meaning of the date entered in ``Date last cited``. In entering a value for this field we use a variety of factors including: the history of basing for the unit, the overall structure and nature of the security forces, and the frequency of movement of similar units.

The values that can be entered in this field are restricted to the below:

-  ``E`` indicates the exact date this unit site was disbanded, or ceases to exist.
-  ``Y`` indicates that we assume this unit site continues to exist.
-  ``N`` indicates we do not assume that this unit site continues to exist, but we do not have an exact end date.

Area of Operations: OSM object name
-----------------------------------

**Description**

A geographical area in which a unit exercises jurisdiction or has operated in any manner

**Type of field**

Text and numbers, OSM object name, first in a pair of fields

**Example of use**

``Baja California Sur``, ``Kafr el-Sheikh Governorate``

**Guidance on use**

The ``Area of Operations`` fields document multiple and concurrent areas of operation of a unit. The value entered in this field is the OpenStreetMap name for the lowest-level formal geographical area that best describes where a unit has operated in some manner.

Area of Operations: OSM object ID number
----------------------------------------

**Description**

A geographical area in which a unit exercises jurisdiction or has operated in any manner

**Type of field**

Numbers, OSM object ID number, second in a pair of fields

**Example of use**

``2589611``, ``4103405``

**Guidance on use**

The ``Area of Operations`` fields document multiple and concurrent areas of operation of a unit. The value entered in this field is the OpenStreetMap object ID number for the lowest-level formal geographical area that best describes where a unit has operated in some manner.

Area of Operations: Country
---------------------------

**Description**

The country in which an Area of Operation is located.

**Type of field**

Two letter country code

**Example of use**

``mx``, ``ug``, ``ng``

**Guidance on use**

We identify ``Area of Operations`` with two different levels of geographical precision.The ``Area of Operations: Country`` field identifies the country in which a unit has operated in some manner. All entries in this field are two letter country codes taken from `ISO 3166, which can be searched here <https://www.iso.org/obp/ui/#search>`__.

Area of Operations: Date first cited
------------------------------------

**Description**

This field is for the earliest citation for a unit's ``Area of Operations``, either through direct reference in the source or by the date of its publication.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``

**Guidance on use**

Along with the fields ``Area of Operations: Founding date?``, ``Area of Operations: Date last cited`` and ``Area of Operations: Open-ended?`` the field ``Area of Operations: Date first cited`` provides data on the time period for which can specify a unit's Area of operations.

The ``Area of Operations: Date first cited`` field contains a date that is either:

-  The earliest date found in any source that references the values contained in the pairs of fields that record ``Area of Operations``.
-  The earliest date of publication for any source that references the values contained in the pairs of fields that record ``Area of Operations``.

In keeping with all date fields we include in this dataset, where our research can only find a year or a year and a month, this can be included in ``Area of Operations: Date first cited``.

This field is clarified by the field ``Area of Operations: start date?`` which indicates whether the date included here is the actual date on which an Area of Operations started.

Area of Operations: Start date?
-------------------------------

**Description**

Is the value in ``Area of Operations: Date first cited`` the actual date on which a unit's Area of Operations started, or the earliest date a source has referred to a unit's Area of Operations?

**Type of field**

Boolean (Yes, No)

**Example of use**

``Y``,\ ``N``

**Guidance on use**

This is a clarifying field for ``Area of Operations: Date first cited``. Where a source references a unit site and specifies the date that unit Area of Operations was started we will enter ``Y`` . In all other cases we will enter a value of ``N`` to indicate that the date is not a start date, but the date of first citation.

Area of Operations: Date last cited
-----------------------------------

**Description**

This field is for the latest citation for an Area of Operations, either through direct reference in the source or by the date of its publication.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``

**Guidance on use**

Along with the fields ``Area of Operations: Date first cited``, ``Area of Operations: start date?`` and ``Area of Operations: Open-ended?`` the field ``Site: Date last cited`` provides data on the time period for which can specify an Area of Operations location.

The ``Area of Operations: Date last cited`` field contains a date that is either:

-  The latest date found in any source that references the values contained in the pairs of fields that record ``Area of Operations``.
-  The latest date of publication for any source that references the values contained in the pairs of fields that record ``Area of Operations``. . In keeping with all date fields we include in this dataset, where our research can only find a year or a year and a month, this can be included in ``Site: Date last cited``.

This field is clarified by the field ``Site: Open-ended?`` which indicates whether the date included here is the actual date on which a unit site was ended, or whether we have reason to assume its continued existence beyond that date.

Area of Operations: Open-ended?
-------------------------------

**Description**

Indicates whether the value in ``Area of Operations: Date last cited`` is the actual date on which a unit ended operations in the specified area, the latest date a source has referred to this Area of Operations, and whether can we assume a unit will continue to operate in an area beyond the date of last citation.

**Type of field**

Single choice from selection

**Example of use**

``Y``,\ ``N``,\ ``E``

**Guidance on use**

We use this field to clarify the meaning of the date entered in ``Area of Operations: Date last cited``. In entering a value for this field we use a variety of factors to assess whether a unit continues to operation in any manner in this area beyond the date of the last citation. These include: the history of operations of the unit, the overall structure and nature of the security forces, and the frequency of movement of similar units.

    For Example, the ``New York State police`` would likely maintain an AOO over all of ``New York State`` even if the last citation available to us was from 2015.

The values that can be entered in this field are restricted to the below:

-  ``E`` indicates the exact date a unit stops operating in the specified area.
-  ``Y`` indicates that we assume this unit continues to operation in the specified area.
-  ``N`` indicates we do not assume that this unit will continue to operate in the specified area, but we do not have an exact end date for this.

Unit Membership
-----------------------

**Description**

Internal/national joint operations, international peacekeeping operations, or other multi-unit efforts that this unit is a part of

**Type of field**

Text and numbers,.

**Example of use**

``Operación Conjunta Chihuahua``, ``Operation BOYONA``

**Guidance on use**

This field indicates whether a unit has had any memberships or attachments to internal/national joint operations, international peacekeeping operations, or other multi-unit efforts. Generally this means one of two things:

| 1) Multiple units operate as part of an “operation” focused on a specific mission.
| 2) Multiple units “lend” or otherwise deploy personnel who operate under the command of a force composition like a "Joint Task Force" or "Operation", which usually has a commander of its own.

    Example: soldiers from ``1 Division`` are deployed to the northeast of Nigeria to operate under ``Operation BOYANA``. ``1 Division`` has a commander, but the soldiers as part of ``Operation BOYANA`` likely report to and take orders from the commander of ``Operation BOYANA``. When the soldiers are done with their rotation, after several months, they return to their “home unit” ``1 Division``. So while ``Operation BOYANA`` commands some soldiers who are part of ``1 Division`` it doesn’t technically command all of the soldiers of ``1 Division`` (otherwise it would be the parent unit).

We treat task forces, operations, peacekeeping missions and anything else represented in this field as distinct units which must have their own record in the system.

Membership: Date first cited
----------------------------

**Description**

This field is for the earliest citation for the location of a membership, either through direct reference in the source or by the date of its publication.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``

**Guidance on use**

Along with the fields ``Membership: Start date?``, ``Membership: Date last cited`` and ``Membership: Open-ended?`` the field ``Membership: Date first cited`` provides data on the duration of one unit's membership in another.

The ``Membership: Date first cited`` field contains a date that is either:

-  The earliest date found in any source that references the values contained in the pairs of fields that record ``Membership``
-  The earliest date of publication of any source that references the values contained in the pairs of fields that record ``Membership``. . In keeping with all date fields we include in this dataset, where our research can only find a year or a year and a month, this can be included in ``Membership: Date first cited``.

This field is clarified by the field ``Membership: Founding date?`` which indicates whether the date included here is the actual date on which a unit membership was founded.

Membership: Start date?
-----------------------

**Description**

Is the value in ``Membership: Date first cited`` the actual date on which a membership was started, or the earliest date a source has referred to a unit Membership?

**Type of field**

Boolean (Yes, No)

**Example of use**

``Y``, ``N``

**Guidance on use**

This is a clarifying field for ``Membership: Date first cited``. Where a source references a membership and specifies the exact date the relationship was established we will enter ``Y`` . In all other cases we will enter a value of ``N`` to indicate that the date is not a start date, but the date of first citation.

Membership: Date of last citation
---------------------------------

**Description**

This field is for the latest citation of a membership, either through direct reference in the source or by the date of its publication.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``

**Guidance on use**

Along with the fields ``Membership: Date first cited``, ``Membership: Start date?`` and ``Membership: End-date?`` the field ``Membership: Date last cited`` provides data on duration of a membership.

The ``Membership: Date last cited`` field contains a date that is either:

-  The latest date found in any source that references the values contained in the pairs of fields that record ``Membership``; or,
-  The latest date of publication of any source that references the values contained in the pairs of fields that record ``Membership``. . In keeping with all date fields we include in this dataset, where our research can only find a year or a year and a month, this can be included in ``Membership: Date last cited``.

This field is clarified by the field ``Membership: Open-ended?`` which indicates whether the date included here is the actual date on which a unit Membership was terminated.

Membership: End Date?
---------------------

**Description**

Is the value in ``Membership: Date last cited`` the actual date on which the membership ended (Y), or the latest date a source has referred to a unital Membership (N)?

**Type of field**

Boolean

**Example of use**

``Y``, ``N``

**Guidance on use**

We use this field to clarify the meaning of the date entered in ``Membership: Date last cited``.

The values that can be entered in this field are restricted to the below:

-  ``Y`` indicates that the membership ended on that date.
-  ``N`` indicates that the date is the date of last citation for the membership.

Unit: Notes
-------------------

**Description**

Analysis, commentary and notes about the unit that do not fit into the data structure.

**Type of field**

Text and numbers

**Example of use**

``In March 1990 the previous Central Regional Military Command based in Taungoo was renamed Southern Regional Military Command, the previous Northwestern Regional Military Command based in Mandalay was renamed as the Central Regional Military Command and a new Northwestern Regional Military Command was created in Monywa.``

**Guidance on use**

We use this field to record information about the unit that is likely to provide useful context, additional information that does not fit into the data structure, and notes about how decisions were made about which data to include. Any sources used should be referenced in the field.

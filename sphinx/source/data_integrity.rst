Data integrity measures
=======================

The data we create is carefully collected from a variety of publicly available sources, generally online, which include laws of the country, government media and press releases, reports from civil society groups, and local and international news reports and many others. We comb through these sources and use the information we find to populate a set of fields about persons, units and incidents, and the relationships between them. The resulting data is a synthesis of information provided within a tapestry of different sources - over 7,000 at the time of writing. We collect data on sources themselves, including their titles, date of publication, online location - the data model for sources is documented here. 

As part of our data creation method, we have implemented two powerful integrity measures that help ourselves and others users of the data interrogate and assess its quality: data point level evidencing and data point confidence scores.

Data point level evidencing
---------------------------

Data point level evidencing is the practice of recording the exact source we used to create a specific piece of data right alongside that piece of data.

For example, records about units cover dimensions like the unit's basic identity (``Unit: Name``, ``Unit: Country``, ``Unit: Classification``), its relationships with other units (``Unit: Related Unit``, ``Unit: Membership``), its physical infrastructure (``Unit: Base Name``) and other things.  Data on units are structured in standard formats of over 60 possible fields. We may use hundreds of different sources to create a record about a single unit: however, the sources used to evidence the existence of a unit's base or area of operations may be different from those we use to evidence its participation in a peacekeeping mission. Further, the sources that show when a unit entered a particular location may be different from those that show when it left.

To overcome this problem, we state what sources are used for each data point. This gives us the advantage of being able to quickly audit a data point; it also means we can see all the data points evidenced by a specific source.

This is quite an unusual way to structure data. In most row-based data capture systems that include data drawn from different sources, there may be a column that contains all the sources for that *row*, leaving the user to guess which sources refer to which data point in the row:

=========  ==========  =========
Unit name  Start date  Sources	
=========  ==========  =========
1 BAT      January     A,B,C,D,E
---------  ----------  ---------
2 BAT      February    C,D,E,F,G
=========  ==========  =========

In our model, the sources for each data point are recorded alongside the relevant data point like this:

=========  =================  ==========  ==================
Unit name  Unit name sources  Start date  Start date sources
=========  =================  ==========  ==================
1 BAT      A,B                January     C,D,E
---------  -----------------  ----------  ------------------
2 BAT      E,F,G              February    C,D,E
=========  =================  ==========  ==================

Implementing this sytem in practice is challenging. For simple data capture systems like spreadsheets, it means adding lots of additional columns to records the sources. If the data model has only a few fields/columns, this isn't a problem; but for a model like ours with over 60 fields, it create a very wide and cumbersome spreadsheet. Where the data capture system is a database with some control over the user interface, it still presents a challenge: we have overcome this in WhoWasInCommand by creating a special "source picker" which enables the user to search for a source, and then associate it with a data point.
	

Confidence scores
-----------------

Confidence scores are measures of the degree to which the sources available to us agree on the content of a particular data point. All the data points we create start with a confidence score of ``Low`` until a confluence of different sources indicate we should upgrade it to a designation of ``Medium``. The gap between upgrading the confidence score of a data point from ``Low`` to ``Medium`` is smaller than when moving from ``Medium`` to ``High``. This scoring system gives a useful indicator of a degree to which we can rely on a data point's accuracy.

Each data point (except those tied to alleged ``incidents``) has a confidence score attached to it. The confidence scores only relate to the specific data point to which they are attached.

For instance, if a wide variety of sources agree that the ``1 Division`` is the name of an ``unit`` a confidence score of ``High`` would be assigned to this data point. However, if there is only one source for ``One Division`` as an alias, a confidence score of ``Low`` would be merited.

Confidence scores are determined first by agreement amongst sources about the overall structure and nature of the security forces. Sources for this type of information generally are laws of the country, government websites, and books. For example, if the law states that police force is divided into Police Divisions and Police Stations and a Monitor researcher comes across a source that references a particular Police Division, we would accept that source with ``Low`` confidence as this conforms with what other sources state about the structure of the police. Conversely, if a Monitor researcher came across a source that referenced a "Police Command Zone" they would need to do more research before publishing information on this potential organization, as "Police Command Zone" does not fit into what other sources state about the structure of the police. This could mean the other sources are incorrect, or that a change has occurred in the structure of the police force, or simply that this is a formation not referenced by the Monitor's other sources. Additional research would help clarify the situation.

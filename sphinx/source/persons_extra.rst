Persons Extra
=============

"Persons Extra" is used to extend the data in `Persons`__ to include a person's social media and other online accounts, official webpages, and media materials containing information about how they look and sound. 

It also serves the purpose of grouping resources that are "ipso facto" - resources that are valuable in themselves, and not only as sources for other data points. This provides the Staff Analyst with a collection of audiovisual media resources that can be used to identify and further research the person. For convenience, some of the data usually captured in sources is treated as sustantive data by this format.

Person Extra: Name
------------------

**Description**

Full name of the person, including given, patronym and surnames, as already recorded in the ``person:name`` field of the `Persons`__ sheet.

**Type of field**

Text and numbers

**Example of use**

``Magaji Musa Majia'a``

**Spreadsheet column name**

``persons_extra:name``

**Shortcode**

``px_name``

**Sources**

No.

**Confidence**

No.

**Guidance on use**

This field is used to store the name of the person about whom extra information is being entered. The person must already have an entry in the `Persons`_ sheet. The value must be identical to that in ``person:name``.

This field is duplicated for every row of data about the person.

Person Extra: Unique Identifier
-------------------------------

**Description**

A unique 32 character code assigned to each person in the dataset, as already recorded in the ``person:id:admin`` field of the `Persons`__ sheet.

**Type of field**

Text and numbers

**Example of use**

``a848de4e-ebeb-49d6-9099-7e68ca3b57fc``

**Spreadsheet column name**

``persons_extra:id:admin``

**Shortcode**

``px_id_a``

**Sources**

No.

**Confidence**

No.

**Guidance on use**

This field is used to store the UUID of the person about whom extra information is being entered. The person must already have an entry in the `Persons`_ sheet. The value must be identical to that in ``person:id:admin``.

This field is duplicated for every row of data about the person.


Person Extra: Gender
--------------------

**Description**

Indicators of a person's sex or gender identity, as observable from available sources.

**Type of field**

Open list, single choice

**Example of use**

``Male``, ``Female``, ``Other``

**Spreadsheet column name**

``person_extra:gender``

**Shortcode**

``px_g``

**Sources**

Yes (``person_extra:gender:source``, ``px_g_s``)

**Confidence**

Yes (``person_extra:gender:confidence``, ``px_g_c``)

**Guidance on use**

This field is used to capture data about the gender of a person, as determined only by the pronouns ("her", "she", "his", "him", etc) used in any available textual sources about this person. We do not infer a person's gender from their name or images of them. 

Echoing the definition used in the `FOAF standard<http://xmlns.com/foaf/spec/#term_gender>`__, the ``Person Extra: Gender`` field is not intended to capture the full range of possible biological, social and sexual associated with the word "gender". In the majority of cases the value recorded in this field will be ``male`` or ``female``. However, we have left this field open to include alternatives that are expressed within the available sources about a person.

Where the sources contain no textual indication about the person's gender, the field should be left blank.

Person Extra: Date of Birth
---------------------------

**Description**

The date on which a person was born.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``1985-10-01``, ``1985-10``, ``1985``

**Spreadsheet column name**

``person_extra:date_of_birth``

**Shortcode**

``px_dob``

**Sources**

Yes (``person_extra:date_of_birth:source``, ``px_dob_s``)

**Confidence**

Yes (``person_extra:date_of_birth:confidence``, ``px_dob_c``)

**Guidance on use**

This field is used to capture the date of birth of a person, with as much specificity as allowed by available sources. The field can accept a full or partial date.

Person Extra: Deceased
----------------------

**Description**

Indicates whether a person has died.

**Type of field**

Positive confirmation, blank if none

**Example of use**

``Y``

**Spreadsheet column name**

``person_extra:deceased``

**Shortcode**

``px_d``

**Sources**

Yes (``person_extra:deceased:source``, ``px_d_s``)

**Confidence**

Yes (``person_extra:deceased:confidence``, ``px_d_c``)

**Guidance on use**

Where sources indicate that a person has died, enter ``Y`` in the field ``Person Extra: Deceased``. In all other cases, leave the field blank.

In many cases the sources used to evidence ``Person Extra: Deceased`` and ``Person Extra: Date of Death`` will be the same. In some cases, however, sources may indicate a person has died without specifying a date. In these cases, the field ``Person Extra: Date of Death`` should not be filled in. 

Person Extra: Date of Death
---------------------------

**Description**

A date on which a person died.

**Type of field**

Date (YYYY-MM-DD), fuzzy

**Example of use**

``2017-07-22``, ``2017-07``, ``2017``

**Spreadsheet column name**

``person_extra:date_of_death``

**Shortcode**

``px_dod``

**Sources**

Yes (``person_extra:date_of_death:source``, ``p_dod_s``)

**Confidence**

Yes (``person_extra:date_of_death:confidence``, ``p_dod_c``)

**Guidance on use**

Use this field to record the full or partial date of a person's death, as recorded in a source. Where a source reports that a person has died, but does not indicate the date on which this happened, only the field ``Person Extra: Deceased`` should be filled in. 


Person Extra: Account Type
--------------------------

**Description**

The name of an online platform or service on which the person holds an account.

**Type of field**

Text and numbers, chosen from list.

**Example of use**

``facebook``, ``twitter``, ``telegram``, ``whatsapp``, ``youtube``, ``vkontakte``, ``wikipedia``

**Spreadsheet column name**

``person_extra:account_type``

**Shortcode**

``px_at``

**Sources**

Yes (``person_extra:account:source``, ``px_a_s``)

**Confidence**

Yes (``person_extra:account:confidence``, ``px_a_c``)

**Guidance on use**

This field is used to record the name of the online platform of service on which a person holds an account. The name is chosen from a list of available platforms and services, which will be updated as required. The subsequent field ``Person Extra: Account Identity`` is used to record the name of the account held by the person on the platform or service. Sources and confidence fields for ``Person Extra: Account Type`` are shared with ``Person Extra: Account Identity``.

Where a person has more than one account, on the same or different platforms, a new row should be created.

Person Extra: Account Identity
------------------------------

**Description**

The account name used by the person on a special online platform or service.

**Type of field**

Text and numbers

**Example of use**

``tomcopsymes`` (on Twitter)

**Spreadsheet column name**

``person_extra:account_id``

**Shortcode**

``px_aid``

**Sources**

Yes (``person_extra:account:source``, ``px_a_s``)

**Confidence**

Yes (``person_extra:account:confidence``, ``px_a_c``)

**Guidance on use**

This field is used to record the account name held by the person on a specific online platform or service. The name of the corresponding online platform or service is stored in ``Person Extra: Account Type``.

Sources and confidence fields for ``Person Extra: Account Identity`` are shared with ``Person Extra: Account Name``.

Where a person has more than one account, on the same or different platforms, a new row should be created.


Person Extra: External URL Actual
---------------------------------

**Description**

Full URL to an external resource about that person, such as a Wikipedia page, official biography or personal website.

**Type of field**

URL

**Example of use**

``https://www.gob.mx/sedena/estructuras/general-luis-cresencio-sandoval-gonzalez``, ``https://en.wikipedia.org/wiki/Luis_Cresencio_Sandoval``

**Spreadsheet column name**

``person_extra:external_url_actual``

**Shortcode**

``px_eua``

**Sources**

No.

**Confidence**

No.

**Guidance on use**

This field is used to store links to material about a person on official websites, other important, widely used online resources about the person (such as a Wikipedia page) , and (if it exists) their own personal website.

A new row is created for each link.

Person Extra: External URL Description
---------------------------------------

**Description**

Short description of the URL recorded in ``Person Extra: External URL Actual``

**Type of field**

Text and numbers.

**Example of use**

``Official biography of General Luis Cresencio Sandoval Gonzálezi on the SEDENA website``, ``Wikipedia page for Luis Cresencio Sandoval``, 

**Spreadsheet column name**

``person_extra:external_url_description``

**Shortcode**

``px_eud``

**Sources**

No.

**Confidence**

No.

**Guidance on use**

This field is used to store a short decription of the link recorded in ``Person Extra: External URL Actual``.

A new row is created for each link.

Person Extra: Media Type
------------------------

**Description**

The type of media in which information is found about a how a person looks or sounds.

**Type of field**

Text and numbers, from a list.

**Example of use**

``audio``, ``image``, ``clip``, ``frame``

**Spreadsheet column name**

``person_extra:media_type``

**Shortcode**

``px_mt``

**Sources**

Yes (``persons_extra:media:source``, ``px_m_s``)

**Confidence**

Yes (``persons_extra:media:confidence``, ``px_m_c``)

**Guidance on use**

This field is used to describe the type of media in which information about how a person looks or sounds is found. It could be an audio capture (from radio, or from a video), an still image, or full or partial video clip or a specific frame captured from a video. The value in ``Person Extra: Media Type`` is chosen from a list, which will be updated as required.

A new row is created for each media item.

Person Extra: Media Actual
--------------------------

**Description**

A hyperlink to media containing information about how a person looks or sounds.

**Type of field**

Hyperlink.

**Example of use**

``https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2013/3/19/1363712095397/Bosco-Ntaganda--010.jpg?width=620&quality=85&auto=format&fit=max&s=275e5d8ea722e40675a6eb4f867656b8``

**Spreadsheet column name**

``person_extra:media_actual``

**Shortcode**

``px_mt``

**Sources**

Yes (``persons_extra:media:source``, ``px_m_s``)

**Confidence**

Yes (``persons_extra:media:confidence``, ``px_m_c``)

**Guidance on use**

Identify the exact hyperlink for the media. Try to identify the simplest possible link, testing whether any image processing or session parameters that may exist in the URL can be removed safely. Where possible, archive the media resource in the Internet Archive or other appropriate archival services. Link to the version of the media that was published as close to its creation date as possible.

The hyperlink can either to an online, public resource, or to a restricted collection.

A new row is created for each media item.

Person Extra: Media Description
-------------------------------

**Description**

Description of content of the hyperlink stored in ``Person Extra: Media Actual``

**Type of field**

Text and numbers.

**Example of use**

``Face and shoulders of Bosco Ntaganda, in military uniform with hat, tie and lapels, backed by two other men in combat fatigues armed with rifles. Taken at a news conference in January 2009.``

**Spreadsheet column name**

``person_extra:media_description``

**Shortcode**

``px_md``

**Sources**

Yes (``persons_extra:media:source``, ``px_m_s``)

**Confidence**

Yes (``persons_extra:media:confidence``, ``px_m_c``)

**Guidance on use**

This field is used to store a brief description the content of the media recorded in ``Person Extra: Media Actual``. The description should be sufficient for the analyst to quickly appraise what they can expect to find in the media about what the person looks or sounds like. 

A new row is created for each media item.


Person Extra: Media Creation Timestamp
--------------------------------------

**Description**

The date and time at which the media was created.

**Type of field**

Date and time in ISO 8601 (YYYY-MM-DDThh:mm:ss), fuzzy.

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``, ``2012-11-23T14:23:23``

**Spreadsheet column name**

``person_extra:media_creation_timestamp``

**Shortcode**

``px_mct``

**Sources**

Yes (``persons_extra:media:source``, ``px_m_s``)

**Confidence**

Yes (``persons_extra:media:confidence``, ``px_m_c``)

**Guidance on use**

This field is used to store the date and time at which the media was created. It can be the same or different than the date of upload, publication (or redistribution) of the media. Use the most full, precise timestamp that is available. Times should be converted to UTC.

Person Extra: Media Upload Timestamp
------------------------------------

**Description**

The date and time at which the media was uploaded to the online service or platform that hosts it.

**Type of field**

Date and time in ISO 8601 (YYYY-MM-DDThh:mm:ss), fuzzy

**Example of use**

``2012``, ``2012-11``, ``2012-11-23``, ``2012-11-23T14:23:23``

**Spreadsheet column name**

``person_extra:media_upload_timestamp``

**Shortcode**

``px_mut``

**Sources**

Yes (``persons_extra:media:source``, ``px_m_s``)

**Confidence**

Yes (``persons_extra:media:confidence``, ``px_m_c``)

**Guidance on use**

This field is used to store the date and time at which the media was uploaded to the online platform or service that hosts it. This timestamp can be the same or different than the date of upload, publication (or redistribution) of the media. Use the most full, precise timestamp that is available. Times should be converted to UTC.

Person Extra: Notes
-------------------

**Description**

Analysis, commentary and notes about the material in row of data in Persons Extra that do not fit into the data structure.

**Type of field**

Text and numbers

**Example of use**

``The image referenced in this row is clipped from a longer video. Should it be necessary, additional views of this individual are available in the video.``

**Spreadsheet column name**

``person_extra:notes``

**Shortcode**

``px_n``

**Sources**

No.

**Confidence**

No.

**Guidance on use**

We use this field to record information about the material in Person Extra that is likely to provide useful context, additional information that does not fit into the data structure, and notes about how decisions were made about which data to include. Any sources used to write the notes should be included directly inside this field.

#!/bin/env bash

# TODO: Move the disabled apps to a new migration (Once Nextcloud tests them.)

#occ_wrap app:enable apporder
occ_wrap app:enable calendar
occ_wrap app:enable circles
occ_wrap app:enable contacts
occ_wrap app:enable cookbook
occ_wrap app:enable deck
occ_wrap app:enable event_update_notification
occ_wrap app:enable external
occ_wrap app:enable files_external
# TODO: Enable user sharing for files_external
occ_wrap app:enable files_frommail
occ_wrap app:enable files_fulltextsearch
occ_wrap app:enable files_fulltextsearch_tesseract
#occ_wrap app:enable forms
occ_wrap app:enable fulltextsearch
occ_wrap app:enable hsts
occ_wrap app:enable impersonate
occ_wrap app:enable mail
occ_wrap app:enable ocr
#occ_wrap app:enable ocsms # Phone sync.
#occ_wrap app:enable ojsxc # Chat.
#occ_wrap app:enable polls
#occ_wrap app:enable rainloop
occ_wrap app:enable ransomware_protection
occ_wrap app:enable social
#occ_wrap app:enable socialsharing_diaspora
#occ_wrap app:enable socialsharing_email
#occ_wrap app:enable spreed # Talk.
occ_wrap app:enable tasks
#occ_wrap app:enable unsplash

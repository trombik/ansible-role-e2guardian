# ansible-role-e2guardian

A brief description of the role goes here.

# Requirements

None

# Role Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `e2guardian_user` | use name of `e2guardian` | `{{ __e2guardian_user }}` |
| `e2guardian_group` | group name of `e2guardian` | `{{ __e2guardian_group }}` |
| `e2guardian_service` | service name | `e2guardian` |
| `e2guardian_conf_dir` | directory where `e2guardian.conf` resides | `{{ __e2guardian_conf_dir }}` |
| `e2guardian_conf_file` | path to `e2guardian.conf` | `{{ __e2guardian_conf_dir }}/e2guardian.conf` |
| `e2guardian_e2guardianf1_conf_file` | path to `e2guardianf1.conf` | `{{ __e2guardian_conf_dir }}/e2guardianf1.conf` |
| `e2guardian_flags` | flags to pass the `e2guardian` | `""` |
| `e2guardian_data_dir` | path to directory where helper scripts and languages files reside | `{{ __e2guardian_data_dir }}` |
| `e2guardian_log_dir` | path to log directory | `{{ __e2guardian_log_dir }}` |
| `e2guardian_lists_dir` | path to directory where ACL files reside | `{{ e2guardian_conf_dir }}/lists` |
| `e2guardian_debian_src` | `.deb` source path or URL (Debian only) | `{{ __e2guardian_debian_src }}` |
| `e2guardian_config` | dict to override `e2guardian_config_default` | `{}` |
| `e2guardian_config_default` | dict of `e2guardian.conf` | see below |
| `e2guardian_e2guardianf1_conf` | dict to override `e2guardian_e2guardianf1_conf_default` | `{}` |
| `e2guardian_e2guardianf1_conf_default` | see below |
| `e2guardian_list` | list of ACL files | see below |


## `e2guardian_config_default`

```yaml
e2guardian_config_default:
  bannediplist: "{{ e2guardian_conf_dir }}/lists/bannediplist"
  contentscanexceptions: "off"
  contentscannertimeout: 60
  custombannedflashfile: "{{ e2guardian_data_dir }}/blockedflash.swf"
  custombannedimagefile: "{{ e2guardian_data_dir }}/transparent1x1.gif"
  deletedownloadedtempfiles: "on"
  downloadmanager: "{{ e2guardian_conf_dir }}/downloadmanagers/default.conf"
  dstatlocation: "{{ e2guardian_log_dir }}/dstats.log"
  exceptioniplist: "{{ e2guardian_conf_dir }}/lists/exceptioniplist"
  filecachedir: "/tmp"
  filtergroups: 1
  filtergroupslist: "{{ e2guardian_conf_dir }}/lists/filtergroupslist"
  filterip: ""
  filterports: 8080
  forcequicksearch: "off"
  forwardedfor: "off"
  hexdecodecontent: "off"
  initialtrickledelay: 20
  ipcfilename: "/tmp/.e2guardianipc"
  ipipcfilename: "/tmp/.e2guardianipipc"
  languagedir: "{{ e2guardian_data_dir }}/languages"
  language: "ukenglish"
  logadblocks: "off"
  logchildprocesshandling: "off"
  logclienthostnames: "off"
  logconnectionhandlingerrors: "on"
  logexceptionhits: 2
  logfileformat: 1
  loglevel: 2
  loglocation: "{{ e2guardian_log_dir }}/access.log"
  logsslerrors: "off"
  loguseragent: "off"
  maxagechildren: 500
  maxchildren: 180
  maxcontentfilecachescansize: 20000
  maxcontentfiltersize: 256
  maxcontentramcachescansize: 2000
  maxips: 0
  maxsparechildren: 32
  minchildren: 20
  minsparechildren: 16
  nodaemon: "off"
  nologger: "off"
  pcontimeout: 55
  phrasefiltermode: 2
  prefercachedlists: "off"
  preforkchildren: 10
  preservecase: 0
  proxyexchange: 20
  proxyip: 127.0.0.1
  proxyport: 3128
  proxytimeout: 20
  recheckreplacedurls: "off"
  reverseaddresslookups: "off"
  reverseclientiplookups: "off"
  scancleancache: "on"
  showweightedfound: "on"
  softrestart: "off"
  trickledelay: 10
  urlcacheage: 900
  urlcachenumber: 1000
  urlipcfilename: "/tmp/.e2guardianurlipc"
  usecustombannedflash: "on"
  usecustombannedimage: "on"
  usexforwardedfor: "off"
```

## `e2guardian_e2guardianf1_conf_default`

```yaml
e2guardian_e2guardianf1_conf_default:
  addheaderregexplist: "{{ e2guardian_lists_dir }}/addheaderregexplist"
  bannedextensionlist: "{{ e2guardian_lists_dir }}/bannedextensionlist"
  bannedmimetypelist: "{{ e2guardian_lists_dir }}/bannedmimetypelist"
  bannedphraselist: "{{ e2guardian_lists_dir }}/bannedphraselist"
  bannedregexpheaderlist: "{{ e2guardian_lists_dir }}/bannedregexpheaderlist"
  bannedregexpurllist: "{{ e2guardian_lists_dir }}/bannedregexpurllist"
  bannedsitelist: "{{ e2guardian_lists_dir }}/bannedsitelist"
  bannedsslsitelist: "{{ e2guardian_lists_dir }}/bannedsslsitelist"
  bannedurllist: "{{ e2guardian_lists_dir }}/bannedurllist"
  blockdownloads: "off"
  bypass: 0
  bypasskey: ""
  categorydisplaythreshold: 0
  contentregexplist: "{{ e2guardian_lists_dir }}/contentregexplist"
  deepurlanalysis: "off"
  disablecontentscan: "off"
  embeddedurlweight: 0
  embededreferersitelist: "{{ e2guardian_lists_dir }}/embededreferersitelist"
  embededrefererurllist: "{{ e2guardian_lists_dir }}/embededrefererurllist"
  enablepics: "off"
  exceptionextensionlist: "{{ e2guardian_lists_dir }}/exceptionextensionlist"
  exceptionfilesitelist: "{{ e2guardian_lists_dir }}/exceptionfilesitelist"
  exceptionfileurllist: "{{ e2guardian_lists_dir }}/exceptionfileurllist"
  exceptionmimetypelist: "{{ e2guardian_lists_dir }}/exceptionmimetypelist"
  exceptionphraselist: "{{ e2guardian_lists_dir }}/exceptionphraselist"
  exceptionregexpurllist: "{{ e2guardian_lists_dir }}/exceptionregexpurllist"
  exceptionsitelist: "{{ e2guardian_lists_dir }}/exceptionsitelist"
  exceptionurllist: "{{ e2guardian_lists_dir }}/exceptionurllist"
  greysitelist: "{{ e2guardian_lists_dir }}/greysitelist"
  greysslsitelist: "{{ e2guardian_lists_dir }}/greysslsitelist"
  greyurllist: "{{ e2guardian_lists_dir }}/greyurllist"
  groupmode: 1
  groupname: ""
  headerregexplist: "{{ e2guardian_lists_dir }}/headerregexplist"
  infectionbypass: 0
  infectionbypasserrorsonly: "on"
  infectionbypasskey: ""
  maxuploadsize: -1
  mitmcheckcert: "on"
  naughtynesslimit: 50
  nocheckcertsitelist: "{{ e2guardian_lists_dir }}/nocheckcertsitelist"
  onlymitmsslgrey: "off"
  picsfile: "{{ e2guardian_lists_dir }}/pics"
  refererexceptionsitelist: "{{ e2guardian_lists_dir }}/refererexceptionsitelist"
  refererexceptionurllist: "{{ e2guardian_lists_dir }}/refererexceptionurllist"
  reportinglevel: 3
  sslcertcheck: "off"
  sslmitm: "off"
  sslsiteregexplist: "{{ e2guardian_lists_dir }}/sslsiteregexplist"
  urlredirectregexplist: "{{ e2guardian_lists_dir }}/urlredirectregexplist"
  urlregexplist: "{{ e2guardian_lists_dir }}/urlregexplist"
  weightedphraselist: "{{ e2guardian_lists_dir }}/weightedphraselist"
```

## `e2guardian_list`

```yaml
e2guardian_list:
  addheaderregexplist : ""
  bannedextensionlist : ""
  bannedmimetypelist : ""
  bannedphraselist : ""
  bannedregexpheaderlist : ""
  bannedregexpurllist : ""
  bannedsitelist : ""
  bannedsslsitelist : ""
  bannedurllist : ""
  contentregexplist : ""
  embededreferersitelist : ""
  embededrefererurllist : ""
  exceptionextensionlist : ""
  exceptionfilesitelist : ""
  exceptionfileurllist : ""
  exceptionmimetypelist : ""
  exceptionphraselist : ""
  exceptionregexpurllist : ""
  exceptionsitelist : ""
  exceptionurllist : ""
  greysitelist : ""
  greysslsitelist : ""
  greyurllist : ""
  headerregexplist : ""
  nocheckcertsitelist : ""
  refererexceptionsitelist : ""
  refererexceptionurllist : ""
  sslsiteregexplist : ""
  urlredirectregexplist : ""
  urlregexplist : ""
  weightedphraselist : ""
```

## Debian

| Variable | Default |
|----------|---------|
| `__e2guardian_user` | `e2guardian` |
| `__e2guardian_group` | `e2guardian` |
| `__e2guardian_conf_dir` | `/etc/e2guardian` |
| `__e2guardian_data_dir` | `/usr/share/e2guardian` |
| `__e2guardian_log_dir` | `/var/log/e2guardian` |
| `__e2guardian_debian_src` | `https://github.com/e2guardian/e2guardian/releases/download/v4.0beta2/e2guardian_4.0.2_jessie_ubuntu16.04_amd64.deb` |

## FreeBSD

| Variable | Default |
|----------|---------|
| `__e2guardian_user` | `nobody` |
| `__e2guardian_group` | `nobody` |
| `__e2guardian_conf_dir` | `/usr/local/etc/e2guardian` |
| `__e2guardian_data_dir` | `/usr/local/share/e2guardian` |
| `__e2guardian_log_dir` | `/var/log/e2guardian` |

# Dependencies

None

# Example Playbook

```yaml
```

# License

```
Copyright (c) 2017 Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
```

# Author Information

Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

This README was created by [qansible](https://github.com/trombik/qansible)

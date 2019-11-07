![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/sboardman/bscli/latest)

# README

The [BaseSpaceSequence Hub CLI](https://developer.basespace.illumina.com/docs/content/documentation/cli/cli-overview) but in a docker!

Also includes `bs cp`.

Based on [gliderlabs/alpine](https://hub.docker.com/r/gliderlabs/alpine).

```bash
docker run -it sboardman/bscli:latest sh
Unable to find image 'sboardman/bscli:latest' locally
latest: Pulling from sboardman/bscli
52effee3cb45: Already exists 
7d2d5c95807c: Already exists 
27bbd41b8972: Already exists 
cd15c4a1e25e: Already exists 
a079980ebf15: Already exists 
331747df53e2: Already exists 
Digest: sha256:d90757e54aeba203f91d9a47fa1538e16afd67f248812e80a7504378e55b94e6
Status: Downloaded newer image for sboardman/bscli:latest
/ # bs
Usage:
  bs [OPTIONS] <command>

The BaseSpace Sequence Hub CLI tool suite is a set of command-line tools available for interacting with BaseSpace, Illumina's cloud-based sequencing informatics platform.

There are two types of internal commands, actions and entity-related, as well as the possibility to plug-in a number of external commands.


Application Options:
  -V, --version       Display version

Logging Options:
  -v, --verbose       Increase verbosity (additive)
  -q, --quiet         Only print errors (overrides verbosity)
      --log=          Path to standard logging destination (if given, captures both STDOUT and STDERR with timestamps)

Output Options:
      --stdout=       Standard Output destination, "path/to/file" or "-" for system's <STDOUT> (default: -)
      --stderr=       Standard Error destination, "path/to/file" or "-" for system's <STDERR> (default: -)

BaseSpace Connection Options:
  -c, --config=       Use this BaseSpaceCLI configuration
      --api-server=   BaseSpace API hostname [$BASESPACE_API_SERVER]
      --access-token= Manual BaseSpace API access token [$BASESPACE_ACCESS_TOKEN]
      --retry         retry failed calls 5 times (with backoff)

Help Options:
  -h, --help          Show this help message

Available actions:
  add           Add lane or workflow settings
  authenticate  Make an authentication request to BaseSpace (aliases: auth)
  await         Await completion or status change
  clear         Clear lane or workflow settings
  content       Show all files in an entity (aliases: contents, dir)
  create        Create an entity
  delete        Move entities to your trash (aliases: rm, move-to-trash)
  download      Download files from an entity
  export        Export lane or workflow settings
  get           Get detailed information about an entity (aliases: info, inspect)
  header        List headers for an entity (aliases: headers)
  import        Import lane or workflow settings
  kill          Abort entities
  launch        Execute a task
  link          Get a direct link for an entity
  list          List and filter entities (aliases: filter, list-all)
  load          Load into your environment
  rename        Rename entities
  set           Set properties in an entity
  translate     Translate v1 <-> v2 entity IDs
  unlock        Unlock a locked entity
  upload        Upload files to an entity
  whoami        Get information about selected user/configuration

Available entities:
  application  View and manage applications (aliases: applications)
  appresult    View and manage appresults (aliases: appresults)
  appsession   View and manage appsessions (aliases: appsessions)
  biosample    View and manage biosamples (aliases: biosamples)
  config       View and manage installed confgurations (aliases: configs, configuration)
  dataset      View and manage datasets (aliases: datasets)
  file         View and manage files (aliases: files)
  lane         View and manage automated lane QC thresholds (aliases: lanes)
  project      View and manage projects (aliases: projects)
  run          View and manage runs (aliases: runs)
  workflow     View and manage workflow applications (aliases: workflows)

Available external commands:
  cp  Provided by $PATH
```

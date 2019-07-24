---
sbg:canvas_x: 228
sbg:links:
- label: Homepage
  id: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/
- label: Documentation
  id: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help/
sbg:toolkitVersion: '1'
sbg:toolAuthor: Seven Bridges
class: Workflow
cwlVersion: v1.0
sbg:canvas_y: 31
sbg:license: Apache License 2.0
outputs:
- sbg:includeInPorts: true
  required: false
  label: Report ZIP
  sbg:fileTypes: ZIP
  source:
  - "#FastQC.report_zip"
  sbg:x: 625.6667522986758
  type:
  - 'null'
  - File
  sbg:y: 468.0002322197048
  id: "#report_zip"
- sbg:includeInPorts: true
  required: false
  label: FastQC Charts
  sbg:fileTypes: HTML, B64HTML
  source:
  - "#SBG_Html2b64.b64html"
  sbg:x: 729.0004155900901
  type:
  - 'null'
  - File
  sbg:y: 271.6668099694836
  id: "#b64html"
sbg:image_url: https://dockstore-vayu.sbgenomics.com/ns/brood/images/autotestsuperuser/project1/fastqc-analysis/0.png
requirements: []
inputs:
- sbg:includeInPorts: true
  label: FASTQ Reads
  sbg:fileTypes: FASTQ, FQ, FASTQ.GZ, FQ.GZ, BAM, SAM
  sbg:x: 190.666674176852
  type:
  - type: array
    items: File
  sbg:y: 347.6667008267519
  id: "#FASTQ_Reads"
- label: limits_file
  sbg:fileTypes: TXT
  sbg:x: 189.99996185302743
  type:
  - 'null'
  - File
  sbg:y: 225.0000000000001
  id: "#limits_file"
- label: contaminants_file
  sbg:fileTypes: TXT
  sbg:x: 191.66661580403658
  type:
  - 'null'
  - File
  sbg:y: 471.66671752929716
  id: "#contaminants_file"
- label: adapters_file
  sbg:fileTypes: TXT
  sbg:x: 193.33330790201833
  type:
  - 'null'
  - File
  sbg:y: 598.3333333333336
  id: "#adapters_file"
label: FastQC Analysis
sbg:revisionsInfo:
- sbg:revision: 0
  sbg:modifiedBy: autotestsuperuser
  sbg:modifiedOn: 1563979697
  sbg:revisionNotes: Copy of admin/sbg-public-data/fastqc-analysis/0
hints: []
sbg:canvas_zoom: 0.5999999999999996
sbg:toolkit: SBGTools
sbg:categories:
- Quality-Control
- FASTQ-Processing
steps:
- inputs:
  - id: "#FastQC.threads"
  - id: "#FastQC.quiet"
  - id: "#FastQC.nogroup"
  - id: "#FastQC.nano"
  - id: "#FastQC.memory_per_job"
  - source:
    - "#limits_file"
    id: "#FastQC.limits_file"
  - id: "#FastQC.kmers"
  - source:
    - "#FASTQ_Reads"
    id: "#FastQC.input_fastq"
  - id: "#FastQC.format"
  - id: "#FastQC.cpus_per_job"
  - source:
    - "#contaminants_file"
    id: "#FastQC.contaminants_file"
  - id: "#FastQC.casava"
  - source:
    - "#adapters_file"
    id: "#FastQC.adapters_file"
  outputs:
  - id: "#FastQC.report_zip"
  sbg:x: 417.33336008919673
  run:
    sbg:id: admin/sbg-public-data/fastqc-0-11-4/18
    sbg:validationErrors: []
    sbg:links:
    - label: Homepage
      id: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/
    - label: Source Code
      id: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4_source.zip
    - label: Wiki
      id: https://wiki.hpcc.msu.edu/display/Bioinfo/FastQC+Tutorial
    - label: Download
      id: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4.zip
    - label: Publication
      id: http://www.bioinformatics.babraham.ac.uk/projects/fastqc
    temporaryFailCodes: []
    sbg:revisionNotes: |-
      * Fixed the JS expression for the CPU and Memory allocation
      * Added cpus_per_job and memory_per_job parameters
      * Removed default version for format, so the tool can handle combinations of file formats
    sbg:contributors:
    - bix-demo
    - nikola_jovanovic
    - mladenlSBG
    sbg:toolAuthor: Babraham Institute
    class: CommandLineTool
    baseCommand:
    - fastqc
    cwlVersion: sbg:draft-2
    sbg:modifiedBy: nikola_jovanovic
    sbg:revision: 10
    sbg:appVersion:
    - sbg:draft-2
    sbg:project: bix-demo/fastqc-0-11-4-demo
    sbg:job:
      inputs:
        threads: 
        format: 
        cpus_per_job: 
        memory_per_job: 
        input_fastq:
        - class: File
          path: "/path/to/input_fastq-1.fastq"
          size: 0
          secondaryFiles: []
        - class: File
          path: "/path/to/input_fastq-2.fastq"
          size: 0
          secondaryFiles: []
        quiet: true
      allocatedResources:
        mem: 1624
        cpu: 2
    y: 361.00001513958
    arguments:
    - valueFrom: "--noextract"
      separate: true
      prefix: ''
    - valueFrom: "."
      separate: true
      prefix: "--outdir"
    sbg:image_url: 
    outputs:
    - outputBinding:
        glob: "*_fastqc.zip"
        sbg:metadata:
          __inherit__: input_fastq
        sbg:inheritMetadataFrom: "#input_fastq"
      label: Report zip
      sbg:fileTypes: ZIP
      description: Zip archive of the report.
      type:
      - 'null'
      - name: report_zip
        type: array
        items: File
      id: "#report_zip"
    stdout: ''
    sbg:categories:
    - FASTQ-Processing
    - Quality-Control
    - Quantification
    id: bix-demo/fastqc-0-11-4-demo/fastqc-0-11-4/10
    requirements:
    - class: ExpressionEngineRequirement
      id: "#cwl-js-engine"
      requirements:
      - class: DockerRequirement
        dockerPull: rabix/js-engine
    inputs:
    - sbg:altPrefix: "-t"
      label: Threads
      sbg:toolDefaultValue: '1'
      sbg:category: Options
      inputBinding:
        valueFrom:
          class: Expression
          engine: "#cwl-js-engine"
          script: |-
            {
            //if "threads" is not specified
            //number of threads is determined based on number of inputs
              if (! $job.inputs.threads){
                $job.inputs.threads = [].concat($job.inputs.input_fastq).length
              }
              return Math.min($job.inputs.threads,7)
            }
        sbg:cmdInclude: true
        separate: true
        prefix: "--threads"
      description: Specifies the number of files which can be processed simultaneously.  Each
        thread will be allocated 250MB of memory so you shouldn't run more threads
        than your available memory will cope with, and not more than 6 threads on
        a 32 bit machine.
      type:
      - 'null'
      - int
      id: "#threads"
    - sbg:altPrefix: "-q"
      label: Quiet
      sbg:category: Options
      inputBinding:
        sbg:cmdInclude: true
        separate: true
        prefix: "--quiet"
      description: Supress all progress messages on stdout and only report errors.
      type:
      - 'null'
      - boolean
      id: "#quiet"
    - sbg:category: Options
      label: Nogroup
      inputBinding:
        sbg:cmdInclude: true
        separate: false
        prefix: "--nogroup"
      description: 'Disable grouping of bases for reads >50bp. All reports will show
        data for every base in the read.  WARNING: Using this option will cause fastqc
        to crash and burn if you use it on really long reads, and your plots may end
        up a ridiculous size. You have been warned.'
      type:
      - 'null'
      - boolean
      id: "#nogroup"
    - sbg:category: Options
      label: Nano
      inputBinding:
        sbg:cmdInclude: true
        separate: false
        prefix: "--nano"
      description: Files come from naopore sequences and are in fast5 format. In this
        mode you can pass in directories to process and the program will take in all
        fast5 files within those directories and produce a single output file from
        the sequences found in all files.
      type:
      - 'null'
      - boolean
      id: "#nano"
    - sbg:category: Execution parameters
      label: Amount of memory allocated per job execution.
      sbg:toolDefaultValue: Determined by the number of input files
      description: Amount of memory allocated per execution of FastQC job.
      type:
      - 'null'
      - int
      id: "#memory_per_job"
    - required: false
      sbg:altPrefix: "-l"
      label: Limits
      sbg:category: File inputs
      sbg:fileTypes: TXT
      inputBinding:
        sbg:cmdInclude: true
        separate: true
        prefix: "--limits"
      description: Specifies a non-default file which contains a set of criteria which
        will be used to determine the warn/error limits for the various modules.  This
        file can also be used to selectively remove some modules from the output all
        together.  The format needs to mirror the default limits.txt file found in
        the Configuration folder.
      type:
      - 'null'
      - File
      id: "#limits_file"
    - sbg:altPrefix: "-f"
      label: Kmers
      sbg:toolDefaultValue: '7'
      sbg:category: Options
      inputBinding:
        sbg:cmdInclude: true
        separate: true
        prefix: "--kmers"
      description: Specifies the length of Kmer to look for in the Kmer content module.
        Specified Kmer length must be between 2 and 10. Default length is 7 if not
        specified.
      type:
      - 'null'
      - int
      id: "#kmers"
    - required: true
      sbg:category: File inputs
      label: Input file
      sbg:fileTypes: FASTQ, FQ, FASTQ.GZ, FQ.GZ, BAM, SAM
      inputBinding:
        sbg:cmdInclude: true
        itemSeparator: 
        separate: true
        position: 100
      description: Input file.
      type:
      - name: input_fastq
        type: array
        items: File
      id: "#input_fastq"
    - sbg:altPrefix: "-f"
      label: Format
      sbg:toolDefaultValue: FASTQ
      sbg:category: Options
      inputBinding:
        sbg:cmdInclude: true
        separate: true
        prefix: "--format"
      description: Bypasses the normal sequence file format detection and forces the
        program to use the specified format.  Valid formats are BAM, SAM, BAM_mapped,
        SAM_mapped and FASTQ.
      type:
      - 'null'
      - symbols:
        - bam
        - sam
        - bam_mapped
        - sam_mapped
        - fastq
        name: format
        type: enum
      id: "#format"
    - sbg:category: Execution parameters
      label: Number of CPUs.
      sbg:toolDefaultValue: Determined by the number of input files
      description: Number of CPUs to be allocated per execution of FastQC.
      type:
      - 'null'
      - int
      id: "#cpus_per_job"
    - required: false
      sbg:altPrefix: "-c"
      label: Contaminants
      sbg:category: File inputs
      sbg:fileTypes: TXT
      inputBinding:
        sbg:cmdInclude: true
        separate: true
        prefix: "--contaminants"
      description: Specifies a non-default file which contains the list of contaminants
        to screen overrepresented sequences against. The file must contain sets of
        named contaminants in the form name[tab]sequence.  Lines prefixed with a hash
        will be ignored.
      type:
      - 'null'
      - File
      id: "#contaminants_file"
    - sbg:category: Options
      label: Casava
      inputBinding:
        sbg:cmdInclude: true
        separate: false
        prefix: "--casava"
      description: Files come from raw casava output. Files in the same sample group
        (differing only by the group number) will be analysed as a set rather than
        individually. Sequences with the filter flag set in the header will be excluded
        from the analysis. Files must have the same names given to them by casava
        (including being gzipped and ending with .gz) otherwise they won't be grouped
        together correctly.
      type:
      - 'null'
      - boolean
      id: "#casava"
    - required: false
      sbg:altPrefix: "-a"
      label: Adapters
      sbg:category: File inputs
      sbg:fileTypes: TXT
      inputBinding:
        sbg:cmdInclude: true
        separate: true
        prefix: "--adapters"
      description: Specifies a non-default file which contains the list of adapter
        sequences which will be explicity searched against the library. The file must
        contain sets of named adapters in the form name[tab]sequence.  Lines prefixed
        with a hash will be ignored.
      type:
      - 'null'
      - File
      id: "#adapters_file"
    label: FastQC
    sbg:createdOn: 1450911593
    sbg:revisionsInfo:
    - sbg:revision: 0
      sbg:modifiedBy: bix-demo
      sbg:revisionNotes: 
      sbg:modifiedOn: 1450911593
    - sbg:revision: 1
      sbg:modifiedBy: bix-demo
      sbg:revisionNotes: 
      sbg:modifiedOn: 1450911593
    - sbg:revision: 2
      sbg:modifiedBy: bix-demo
      sbg:revisionNotes: 
      sbg:modifiedOn: 1450911594
    - sbg:revision: 3
      sbg:modifiedBy: mladenlSBG
      sbg:revisionNotes: 
      sbg:modifiedOn: 1459870965
    - sbg:revision: 4
      sbg:modifiedBy: mladenlSBG
      sbg:revisionNotes: 
      sbg:modifiedOn: 1465990120
    - sbg:revision: 5
      sbg:modifiedBy: mladenlSBG
      sbg:revisionNotes: Input categories added.
      sbg:modifiedOn: 1476188095
    - sbg:revision: 6
      sbg:modifiedBy: mladenlSBG
      sbg:revisionNotes: "FASTQ input changed from single file to array. Added better
        thread handling. \n\nIMPORTANT NOTICE: If updating this tool in existing workflow,
        it's necessary to REMOVE SCATTER (uncheck it) from input_fastq or it might
        break the pipeline."
      sbg:modifiedOn: 1476270496
    - sbg:revision: 7
      sbg:modifiedBy: mladenlSBG
      sbg:revisionNotes: |-
        FASTQ input changed from single file to array. Added better thread handling.

        IMPORTANT NOTICE: If updating this tool in existing workflow, it's necessary to REMOVE SCATTER (uncheck it) from input_fastq or it might break the pipeline.
      sbg:modifiedOn: 1476354537
    - sbg:revision: 8
      sbg:modifiedBy: mladenlSBG
      sbg:revisionNotes: |-
        IMPORTANT NOTICE: If updating this tool in existing workflow, it's necessary to REMOVE SCATTER (uncheck it) from input_fastq or it might break the pipeline."

        Added automatised handling of BAM and SAM files. Also, added security measures for better automated threading handling.
      sbg:modifiedOn: 1488882730
    - sbg:revision: 9
      sbg:modifiedBy: nikola_jovanovic
      sbg:revisionNotes: |-
        Changed the file types of limits, adapters and contaminants files to be TXT, they have to be in format name[tab]sequence. Format should be similar to the one in the Configuration folder provided with FastQC, txt files.

        "IMPORTANT NOTICE: If updating this tool in existing workflow, it's necessary to REMOVE SCATTER (uncheck it) from input_fastq or it might break the pipeline."
      sbg:modifiedOn: 1488980183
    - sbg:revision: 10
      sbg:modifiedBy: nikola_jovanovic
      sbg:revisionNotes: |-
        * Fixed the JS expression for the CPU and Memory allocation
        * Added cpus_per_job and memory_per_job parameters
        * Removed default version for format, so the tool can handle combinations of file formats
      sbg:modifiedOn: 1493223877
    x: 417.33336008919673
    sbg:sbgMaintained: false
    stdin: ''
    sbg:cmdPreview: fastqc  --noextract --outdir .  /path/to/input_fastq-1.fastq  /path/to/input_fastq-2.fastq
    sbg:toolkit: FastQC
    sbg:modifiedOn: 1493223877
    sbg:latestRevision: 10
    hints:
    - class: DockerRequirement
      dockerImageId: 759c4c8fbafd
      dockerPull: images.sbgenomics.com/mladenlsbg/fastqc:0.11.4
    - class: sbg:CPURequirement
      value:
        class: Expression
        engine: "#cwl-js-engine"
        script: "{\n  // if cpus_per_job is set, it takes precedence\n  if ($job.inputs.cpus_per_job)
          {\n    return $job.inputs.cpus_per_job \n  }\n  // if threads parameter
          is set, the number of CPUs is set based on that parametere\n  else if ($job.inputs.threads)
          {\n    return $job.inputs.threads\n  }\n  // else the number of CPUs is
          determined by the number of input files, up to 7 -- default\n  else return
          Math.min([].concat($job.inputs.input_fastq).length,7)\n}"
    - class: sbg:MemRequirement
      value:
        class: Expression
        engine: "#cwl-js-engine"
        script: |+
          {
            // if memory_per_job is set, it takes precedence
            if ($job.inputs.memory_per_job){
              return $job.inputs.memory_per_job
            }
            // if threads parameter is set, memory req is set based on the number of threads
            else if ($job.inputs.threads){
              return 1024 + 300*$job.inputs.threads
            }
            // else the memory req is determined by the number of input files, up to 7 -- default
            else return (1024 + 300*Math.min([].concat($job.inputs.input_fastq).length,7))
          }

    sbg:toolkitVersion: 0.11.4
    sbg:projectName: FastQC 0.11.4 - Demo
    successCodes: []
    sbg:license: GNU General Public License v3.0 only
    description: "FastQC reads a set of sequence files and produces a quality control
      (QC) report from each one. These reports consist of a number of different modules,
      each of which will help identify a different type of potential problem in your
      data. \n\nSince it's necessary to convert the tool report in order to show them
      on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow
      instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/).
      \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on
      it to generate a comprehensive QC report.  This report will tell you if there
      is anything unusual about your sequence.  Each test is flagged as a pass, warning,
      or fail depending on how far it departs from what you would expect from a normal
      large dataset with no significant biases.  It is important to stress that warnings
      or even failures do not necessarily mean that there is a problem with your data,
      only that it is unusual.  It is possible that the biological nature of your
      sample means that you would expect this particular bias in your results.\n\n###
      Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report
      on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter
      SBG Html2b64 so it would be able to process an array of files. The example can
      be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/)
      which you can also use instead of this tool."
    sbg:createdBy: bix-demo
  sbg:y: 361.00001513958
  id: "#FastQC"
- inputs:
  - source:
    - "#FastQC.report_zip"
    id: "#SBG_Html2b64.input_file"
  outputs:
  - id: "#SBG_Html2b64.b64html"
  scatter: "#SBG_Html2b64.input_file"
  sbg:x: 571.6667501529085
  run:
    sbg:id: admin/sbg-public-data/sbg-html2b64/11
    sbg:validationErrors: []
    temporaryFailCodes: []
    sbg:revisionNotes: data errors=ignore added
    sbg:toolkitVersion: '1.0'
    sbg:toolAuthor: Seven Bridges
    class: CommandLineTool
    baseCommand:
    - python
    - sbg_html_to_b64.py
    cwlVersion: sbg:draft-2
    sbg:modifiedBy: medjo
    sbg:revision: 8
    sbg:appVersion:
    - sbg:draft-2
    sbg:project: bix-demo/sbgtools-demo
    sbg:job:
      inputs:
        input_file:
          class: File
          path: input_file.ext
          size: 0
          secondaryFiles: []
      allocatedResources:
        mem: 1000
        cpu: 1
    arguments: []
    sbg:image_url: 
    outputs:
    - outputBinding:
        glob: "*b64html"
        sbg:metadata: {}
        sbg:inheritMetadataFrom: "#input_file"
      label: B64html
      sbg:fileTypes: HTML, B64HTML
      description: Output file, b64html.
      type:
      - 'null'
      - File
      id: "#b64html"
    stdout: ''
    sbg:categories:
    - Converters
    - Plotting-and-Rendering
    sbg:contributors:
    - bix-demo
    - medjo
    id: https://api.sbgenomics.com/v2/apps/bix-demo/sbgtools-demo/sbg-html2b64/8/raw/
    requirements:
    - fileDef:
      - fileContent: |-
          """
          Usage:
              sbg_html_to_b64.py --input FILE [--select FILE]

          Description:
              This tool is used for conversion of html file to b64 html file so it can be easily displayed in browsers.

          Options:
              -h, --help      Show this help message and exit. (For third class of tools it's required to put
                              this option).

              -v, --version   Show version and exit.

              --input FILE    Input file is archive containing html and all other files included in the html file(images, etc).

              --select FILE If we wish to select specific html file from folder that we wish to parse.

          Examples:
              python sbg_html_to_b64.py --input sample_fastqc.zip
          """

          import os
          from docopt import docopt
          import os.path
          import base64
          import mimetypes
          from bs4 import BeautifulSoup
          from path import Path
          from subprocess import call, check_output
          import re


          def dataurl(data, mime=None):
              isfile = os.path.isfile(data)
              if not isfile and not mime:
                  raise Exception('Mimetype must be provided when encoding data is not a valid file path.')
              if not mime:
                  mimetypes.init()
                  mime, enc = mimetypes.guess_type(os.path.join('file://', data))
                  if mime is None:
                      raise Exception('rfc2397: failed to determine file type')
              if isfile:
                  with open(data, 'r') as fpp:
                      data = fpp.read()
              return 'data:%s;base64,%s' % (mime, base64.b64encode(data.encode(encoding="utf-8", errors="ignore")))


          def compact_html(html_file):
              with open(html_file) as f:
                  html = f.read()

              if 'snpEff_summary' in html_file:
                  for l in html.split('\n'):
                      if str(l).startswith('<a name'):
                          html = html.replace(str(l), str(l) + '</a>')
                  html = html.replace('<p>', '<p></p>')
                  html = html[:-358]
                  soup = BeautifulSoup(html, "html5lib")

                  js = "javascript: void(0); document.getElementById('%s').scrollIntoView(true);"
                  for anchor in soup.findAll('a'):
                      if 'href' in str(anchor):
                          if anchor['href'].startswith('#'):
                              anchor['href'] = js % anchor['href'][1:]
                          else:
                              anchor.decompose()
                      else:
                          anchor['id'] = anchor['name']

                  return soup.prettify()

              else:
                  html = html.replace('&middot;', '.')
                  html = html.replace('&raquo;', '>>')
                  html = html.replace('&ge;', '>=')
                  html = html.replace('&gt;', '>')
                  html = html.replace('&lt;', '<')
                  html = html.replace('\xab', '<<')
                  html = html.replace('\xbb', '>>')
                  html = html.replace('\xc2', '')
                  html = html.replace('&le;', '<=')
                  html = html.replace('&mdash;', '--')
                  #html = re.sub(re.compile("/\*.*?\*/", re.DOTALL), "", html)
                  base_dir = os.path.split(html_file)[0]
                  soup = BeautifulSoup(html, "html5lib")
                  for img in soup.findAll('img'):
                      if img['src'].find('data:') == 0:
                          durl_img = img['src']
                      else:
                          durl_img = dataurl(os.path.join(base_dir, img['src']))
                      img['src'] = durl_img
                  return soup.prettify()


          def html_to_dataurl(html_file):
              return dataurl(compact_html(html_file), mime='text/html')

          if __name__ == "__main__":
              args = docopt(__doc__, version='1.0')
              filename = args.get('--input')

              # unzipping the archive
              if Path(filename).ext == '.zip':
                  cmd = ["unzip", filename, "-d", "./unzip"]
                  call(cmd)

                  if args.get('--select'):
                      selected_file = args.get('--select')
                      filepath = "./unzip/" + args.get('--select')
                      if os.path.isfile(filepath):
                          html_file = filepath
                          b64_html = selected_file + '.b64html'
                      else:
                          raise Exception("File not present!")
                  else:
                      html_file = check_output(["find", "./unzip", "-iname", "*.html"]).split('\n')[:-1]
                      if len(html_file) == 1:
                          b64_html = Path(filename).namebase + '.b64html'
                          html_file = html_file[0]                                # conversion from list to string
                      else:
                          b64_html = [x.split('/')[-1] + '.b64html' for x in html_file]
              else:
                  html_file = filename
                  b64_html = Path(filename).namebase + '.b64html'

              # check if we need to process single or list of html files. if it is a single file then html_file is type string
              if type(html_file) is str:
                  with open(b64_html, 'w') as fp:
                      fp.write(html_to_dataurl(html_file))
              elif type(b64_html) is list:
                  for i, elem in enumerate(b64_html):
                      with open(elem, 'w') as fp:
                          print(html_file[i])
                          fp.write(html_to_dataurl(html_file[i]))
              else:
                  raise Exception('This is not good.')
        filename: sbg_html_to_b64.py
      class: CreateFileRequirement
    inputs:
    - sbg:category: File input.
      label: Input file
      sbg:fileTypes: ZIP, HTML
      inputBinding:
        sbg:cmdInclude: true
        separate: true
        prefix: "--input"
      description: Compressed archive.
      type:
      - 'null'
      - File
      id: "#input_file"
    label: SBG Html2b64
    sbg:latestRevision: 8
    sbg:revisionsInfo:
    - sbg:revision: 0
      sbg:modifiedBy: bix-demo
      sbg:revisionNotes: 
      sbg:modifiedOn: 1450911294
    - sbg:revision: 1
      sbg:modifiedBy: bix-demo
      sbg:revisionNotes: 
      sbg:modifiedOn: 1450911294
    - sbg:revision: 2
      sbg:modifiedBy: bix-demo
      sbg:revisionNotes: 
      sbg:modifiedOn: 1459963571
    - sbg:revision: 3
      sbg:modifiedBy: medjo
      sbg:revisionNotes: MulitQC, ChimeraScan added
      sbg:modifiedOn: 1496315469
    - sbg:revision: 4
      sbg:modifiedBy: medjo
      sbg:revisionNotes: 
      sbg:modifiedOn: 1496317247
    - sbg:revision: 5
      sbg:modifiedBy: medjo
      sbg:revisionNotes: 
      sbg:modifiedOn: 1496670071
    - sbg:revision: 6
      sbg:modifiedBy: medjo
      sbg:revisionNotes: bug fixed
      sbg:modifiedOn: 1496673165
    - sbg:revision: 7
      sbg:modifiedBy: medjo
      sbg:revisionNotes: 
      sbg:modifiedOn: 1496673994
    - sbg:revision: 8
      sbg:modifiedBy: medjo
      sbg:revisionNotes: data errors=ignore added
      sbg:modifiedOn: 1503051959
    sbg:createdOn: 1450911294
    sbg:sbgMaintained: false
    stdin: ''
    sbg:cmdPreview: python sbg_html_to_b64.py
    sbg:toolkit: SBGTools
    sbg:modifiedOn: 1503051959
    hints:
    - class: DockerRequirement
      dockerImageId: 8c35d2a2d8d1
      dockerPull: images.sbgenomics.com/medjo/sbg-html:1.0
    - class: sbg:CPURequirement
      value: 1
    - class: sbg:MemRequirement
      value: 1000
    sbg:projectName: SBGTools - Demo New
    successCodes: []
    sbg:license: Apache License 2.0
    description: Tool for converting HTML reports of FastQC, SnpEff, MultiQC (simple
      report only) and ChimeraScan to b64html so it can easily be displayed on SBG
      platform.
    sbg:createdBy: bix-demo
  sbg:y: 271.66673882802587
  id: "#SBG_Html2b64"
"$namespaces":
  sbg: https://sevenbridges.com
description: "The FastQC tool, developed by the Babraham Institute, analyzes sequence
  data from FASTQ, BAM, or SAM files. It produces a set of metrics and charts that
  help identify technical problems with the data. \n\nUse this pipeline on files you
  receive from a sequencer or a collaborator to get a general idea of how well the
  sequencing experiment went. Results from this pipeline can inform if and how you
  should proceed with your analysis.\n\n###Required inputs\n\n1. FASTQ Reads (ID:
  *FASTQ_reads*) - one or more FASTQ files. *Note*: In order to process these files
  efficient, set the number of threads on FastQC app. If it is not set, it will be
  set automatically based on number of input files, one CPU core per file. If the
  number of the files is too big (greater than the number of CPU cores on instance)
  the task will fail. Therefore it's advised that the user should set the \"threads\"
  argument of FastQC.\n\n###Outputs\n\n1. Report ZIP (ID: *report_zip*)  - ZIP archive
  containing FastQC html report with dependancies.\n2. FastQC Charts (ID: *b64html*)
  - Self-contained b64html file, enabling users to see FastQC reports on Seven Bridges
  platform.\n\n###Common issues\n\n1. In order to process these files efficient, set
  the number of threads on FastQC app. If it is not set, it will be set automatically
  based on number of input files, one CPU core per file. If the number of the files
  is too big (greater than the number of CPU cores on instance) the task will fail.
  Therefore it's advised that the user should set the \"threads\" argument of FastQC.\n2.
  If processing large number of big FASTQ files, you might hit the limit of available
  disk space. Before starting the workflow, check if the total input size is less
  than available instance disk space. If not, set the different instance, or reduce
  number of inputs."
sbg:projectName: project1
sbg:appVersion:
- sbg:draft-2
id: http://dockstore-vayu.sbgenomics.com:27444/v2/apps/autotestsuperuser/project1/fastqc-analysis/0/raw/
sbg:id: autotestsuperuser/project1/fastqc-analysis/0
sbg:revision: 0
sbg:revisionNotes: Copy of admin/sbg-public-data/fastqc-analysis/0
sbg:modifiedOn: 1563979697
sbg:modifiedBy: autotestsuperuser
sbg:createdOn: 1563979697
sbg:createdBy: autotestsuperuser
sbg:project: autotestsuperuser/project1
sbg:sbgMaintained: false
sbg:validationErrors: []
sbg:contributors:
- autotestsuperuser
sbg:latestRevision: 0
sbg:publisher: sbg
sbg:content_hash: aa75a7fdc32b5c36bffec550a7c93ea398a7085a8e11a1409ec1594a94a793c25
sbg:copyOf: admin/sbg-public-data/fastqc-analysis/0

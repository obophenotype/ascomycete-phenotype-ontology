# Ascomycete Phenotype Ontology

The repository contains the source for the APO

## Making edits

Edits should be performed on [src/ontology/apo-edit.obo](https://github.com/obophenotype/ascomycete-phenotype-ontology/blob/master/src/ontology/apo-edit.obo). The release products in the root of the repository are generated automatically by the release workflow.

## Making a release

A release can be triggered using a GitHub Action. After committing all desired edits to the `master` branch, open the Actions tab and select the [Make release](https://github.com/obophenotype/ascomycete-phenotype-ontology/actions/workflows/release.yml) action. Click the "Run workflow" popup and run the workflow from the `master` branch. The workflow will regenerate the OWL and OBO release files and commit them to the `master` branch. It will also create a tag based on the current date. This date is used within the `versionIRI` for the released ontology files. _Note: only one release may be run per day, due to the date-based version scheme._


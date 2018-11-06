#!/bin/bash
{% set i = inventory.parameters %}
{% set cluster = i.cluster %}

{% if cluster.type == "gke" %}
  gcloud container clusters get-credentials {{cluster.name}} --zone {{cluster.zone}} --project {{i.project}}
{% endif %}


---
date: 2024-12-11
authors: [me]
categories:
  - Novel Minds
tags:
  - VLM
  - Books
  - AI
  - Literature
---

# Solve Your Image Generation Accuracy with VLM Rejection Sampling

## The Genesis of an Idea

It was a hot morning towards the end of the summer when we met at Mozart's in Austin, Texas to catch up and share ideas. Over coffee, we discussed our shared love of reading and pondered: *wouldn't it be cool to read a book and see the image of what we were reading?* While e-readers have transformed where we read, the fundamental reading experience hasn't evolved much. With LLMs becoming multi-modal and image generation improving daily, we saw an opportunity.

> We wondered: Do people read anymore?

The statistics were concerning. Literacy rates in the United States had declined over the past five years, complicated by the pandemic and increasing competition from visual media and games. We asked ourselves:

* What if our beloved classics could come to life with illustrations?
* Could we do this easily for any book?
* What might we learn in the process?

## From Concept to MVP

### Initial Prototyping

After determining that a full-fledged custom EPUB reader with advanced connectivity for on-demand image generation might be too ambitious for our MVP, we narrowed our focus. We decided to start with public domain classics, ultimately selecting:

1. *Around the World in 80 Days* by Jules Verne
2. *Through the Looking Glass* by Lewis Carroll
3. *Pride and Prejudice* by Jane Austen

The choice of *Around the World in 80 Days* was particularly compelling due to its rich variety of settings, era-specific atmosphere, and memorable adventures.

### Early Challenges

Our first breakthrough came quickly - successfully injecting a single image into an EPUB. The next day, Jason expanded this dramatically, producing 21 versions of *Around the World in 80 Days* using various models:

* Stability (1.0, 3.0, Core, Core with styles)
* DALLE-2

## Refining the Process

### Identifying Problems

While reviewing the variations, several issues became apparent:

* Inconsistent era representation
* Incorrect character renderings
* Fluctuating visual styles
* Reader immersion breaking

### Solutions Implemented

To improve the reading experience, we focused on several key areas:

1. **Historical Accuracy**
   * Eliminated anachronistic elements
   * Maintained period-appropriate details

2. **Character Consistency**
   * Used ChatGPT 4o for character summaries
   * Implemented appositive descriptions
   * Maintained visual consistency across illustrations

3. **Visual Style**
   * Adopted line-art for consistent rendering
   * Optimized for various devices (tablets, Kindles, laptops)
   * Used Stability 1XL for cost-effective iteration

## Technical Implementation

### Quality Control System

During our iteration phase with *Through the Looking Glass*, *The Great Gatsby*, and *The Metamorphosis*, we encountered various rendering challenges:

* Animal heads on people
* Missing or extra limbs
* Grotesque imagery
* Incomplete torsos

Our solution? **VLM-based quality control**:

1. Generate image
2. VLM analysis of critical details
3. Accept or reject based on quality criteria
4. Regenerate failed images

### Technology Stack

We eventually settled on:

* **Image Generation**: Flux.1-dev
* **Language Models**:
  * OpenAI 4o-mini
  * OpenAI 4o
  * Llama 3

## Final Touches

### Book Covers

* Generated multiple options with integrated titles
* Used VLM for spell-checking
* Created five variants per title
* Selected favorites based on aesthetic appeal

### Abridged Versions

To address length concerns with illustrated editions stretching to 1000+ pages, we created abridged versions that:

* Capture the essential story
* Maintain narrative integrity
* Provide single-sitting reading experiences

## Join Us on This Journey

We're excited to share these reimagined classics with you at [novelminds.ai](https://novelminds.ai).

### Connect With Us

* **Twitter**: [@NeuralNets4Life](https://twitter.com/NeuralNets4Life) & [@hereandtomorrow](https://twitter.com/hereandtomorrow)
* **Email**:
  * Jason: [jgmath2000@gmail.com](mailto:jgmath2000@gmail.com)
  * Scott: [scott@hereandtomorrow.com](mailto:scott@hereandtomorrow.com)
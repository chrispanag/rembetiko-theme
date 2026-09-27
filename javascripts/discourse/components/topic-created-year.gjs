import Component from "@glimmer/component";
import { longDate } from "discourse/lib/formatter";
import { i18n } from "discourse-i18n";

// Shows "από 2011" next to the title of topics started in an earlier year, so
// a bumped old thread doesn't look new just because its activity is recent.
export default class TopicCreatedYear extends Component {
  get createdAt() {
    const createdAt = this.args.topic?.createdAt;
    return createdAt ? new Date(createdAt) : null;
  }

  get year() {
    const year = this.createdAt?.getFullYear();
    return year < new Date().getFullYear() ? year : null;
  }

  <template>
    {{#if this.year}}
      <span class="topic-created-year" title={{longDate this.createdAt}}>
        {{i18n (themePrefix "topic_list.created_year") year=this.year}}
      </span>
    {{/if}}
  </template>
}

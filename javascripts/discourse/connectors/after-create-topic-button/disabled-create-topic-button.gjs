import DButton from "discourse/components/d-button";
import { i18n } from "discourse-i18n";
import DButtonTooltip from "float-kit/components/d-button-tooltip";
import DTooltip from "float-kit/components/d-tooltip";

const DisabledCreateTopicButton = <template>
  <div class="dm-disabled-create-topic-button">
    <DButtonTooltip>
      <:button>
        <DButton
          @icon="far-pen-to-square"
          @disabled={{true}}
          @label="topic.create"
          class="btn-default"
        />
      </:button>
      <:tooltip>
        <DTooltip
          @icon="circle-info"
          @content={{i18n (themePrefix "disallowed_reason")}}
        />
      </:tooltip>
    </DButtonTooltip>
  </div>
</template>;

export default DisabledCreateTopicButton;

import { apiInitializer } from "discourse/lib/api";
import TopicCreatedYear from "../components/topic-created-year";

export default apiInitializer((api) => {
  api.renderInOutlet("topic-list-after-title", TopicCreatedYear);
});
